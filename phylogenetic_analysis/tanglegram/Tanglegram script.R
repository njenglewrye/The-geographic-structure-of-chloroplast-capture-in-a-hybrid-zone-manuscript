##In the mp and ml tree files I need to get rid of all ' and change all spaces to _ before running script

library(phytools)

# Load trees for cp vs nuclear
rooted.mp_tree <- read.nexus("/Users/user/Desktop/Heuchera americana project/Floral Scent paper/Figures/Phylogenies/Tanglegram/Chloroplast vs NuclearAstraSpruceup/Renamed for R/rooted.mp_tree.tre")
rooted.ml_tree <- read.nexus("/Users/user/Desktop/Heuchera americana project/Floral Scent paper/Figures/Phylogenies/Tanglegram/Chloroplast vs NuclearAstraSpruceup/Renamed for R/rooted.ml_tree.tre")

# Make cophylo object (will take a long time)
obj <- cophylo(rooted.mp_tree,rooted.ml_tree)

# Plot cophylo object
plot(obj,type=c("cladogram","phylogram"),fsize=0.1,part=0.3, mar=c(0.1,0.1,2.1,0.1),pts=FALSE,lwd=0.5,link.type="curved")

#########################################################################
# Load trees for nuc vs mitochondria
rooted.mp_tree <- read.nexus("/Users/user/Desktop/Heuchera americana project/Floral Scent paper/Figures/Phylogenies/Tanglegram/Mitochondrion vs NuclearAstralSpruceup/Renamed trees for R/rooted.mp_tree.tre")
rooted.ml_tree <- read.nexus("/Users/user/Desktop/Heuchera americana project/Floral Scent paper/Figures/Phylogenies/Tanglegram/Mitochondrion vs NuclearAstralSpruceup/Renamed trees for R/rooted.ml_tree.tre")

# Make cophylo object (will take a long time)
obj <- cophylo(rooted.mp_tree,rooted.ml_tree)

# Plot cophylo object
plot(obj,type=c("phylogram","phylogram"), fsize=0.1, part=0.3, mar=c(0.1,0.1,2.1,0.1), pts=FALSE, lwd=0.5, link.type="curved")
