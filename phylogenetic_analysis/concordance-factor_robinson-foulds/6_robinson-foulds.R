library(ape)
library(phangorn)
library(ggplot2)
library(dplyr)

plastid <- read.tree("chloroplast.raxml.bestTree.tre")

files <- list.files("results_phy", pattern = "\\.tre$",
                    full.names = TRUE)

total <- length(files)

results <- lapply(seq_along(files), function(i) {

  f <- files[i]
  cat(sprintf("[%d/%d] Processing %s\n", i, total, basename(f)))
  flush.console()

  trees <- read.tree(f)
  if (inherits(trees, "phylo")) trees <- list(trees)

  gene <- sub("\\.tre$", "", basename(f))

  data.frame(
    gene = gene,
    RF = sapply(trees, function(tr) {

      shared <- intersect(plastid$tip.label, tr$tip.label)

      if (length(shared) < 4) return(NA_real_)

      p <- keep.tip(plastid, shared)
      n <- keep.tip(tr, shared)

      RF.dist(p, n, normalize = TRUE)
    })
  )
})

df <- bind_rows(results)

#df <- read.csv("RF_distances.csv")
#df$X <- NULL

write.csv(df, file = "RF_distances.csv")

df$gene <- sub("\\..*$", "", df$gene)

library(ggplot2)

# Order loci by median RF distance
df$gene <- reorder(df$gene, df$RF, FUN = median, na.rm = TRUE)

p <- ggplot(df, aes(x = gene, y = RF)) +

  # Posterior samples, jittered to reveal overlapping discrete values
  geom_jitter(
    width = 0.18,
    height = 0,
    alpha = 0.025,
    size = 0.35,
    color = "#4477AA"
  ) +

  # Summarize each locus
  geom_boxplot(
    width = 0.55,
    outlier.shape = NA,
    fill = "#A6CEE3",
    color = "#263238",
    linewidth = 0.25
  ) +

  coord_flip() +

  labs(
    x = NULL,
    y = "Normalized Robinson–Foulds distance",
    title = "Nuclear–plastid phylogenetic discordance",
    subtitle = "Posterior RF distances across 277 nuclear loci"
  ) +

  theme_classic(base_size = 11) +

  theme(
    axis.text.y = element_text(size = 5.5),
    axis.text.x = element_text(size = 10),
    axis.title.x = element_text(size = 12),
    plot.title = element_text(face = "bold", size = 14),
    panel.grid.major.x = element_line(
      color = "grey90",
      linewidth = 0.25
    )
  )

ggsave(
  "nuclear_plastid_RF.pdf",
  p,
  width = 10,
  height = 32,
  limitsize = FALSE
)

