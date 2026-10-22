mkdir -p results_phy

for f in results/*.run?.t; do
    out="results_phy/$(basename "$f" .t).tre"
    pxt2new -t "$f" |
        awk '{trees[NR]=$0} END {for(i=int(NR/4)+1;i<=NR;i++) print trees[i]}' \
        > "$out"
done

