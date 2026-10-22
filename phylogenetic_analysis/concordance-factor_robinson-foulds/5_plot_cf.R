library(ggplot2)

d <- read.table("chloroplast_cf.cf.stat",
                header = TRUE,
                sep = "\t",
                comment.char = "#")
x <- d$gCF[is.finite(d$gCF)]

p <- ggplot(data.frame(gCF = x), aes(x = gCF)) +
  geom_histogram(
    binwidth = 1, boundary = 0,
    fill = "firebrick", color = "white"
  ) +
  labs(
    x = "Nuclear posterior split concordance (%)",
    y = "Number of chloroplast branches"
  ) +
  theme_classic(base_size = 14)

ggsave("chloroplast_cf_histogram.pdf", p, width = 4, height = 3)

print(c(
  branches = length(x),
  zero_percent = mean(x == 0) * 100,
  below_one_percent = mean(x < 1) * 100,
  median = median(x),
  maximum = max(x)
))
