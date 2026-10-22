cat results_phy/*.tre > all_posterior_trees.tre

iqtree2 -t chloroplast.raxml.bestTree.tre \
    --gcf all_posterior_trees.tre \
    --cf-verbose \
    --prefix chloroplast_cf
