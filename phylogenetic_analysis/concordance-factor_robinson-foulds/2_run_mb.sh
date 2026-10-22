#!/usr/bin/env bash

mkdir -p results

for f in nexus/*.nex; do
    name=$(basename "$f" .nex)

    (
        export OMP_NUM_THREADS=1
        export OPENBLAS_NUM_THREADS=1

        tmp=$(mktemp --suffix=.nex)

        cat "$f" commands.nex > "$tmp"

        # Unique output prefix, avoiding MrBayes filename limits
        sed -i "s/filename=gene_tree/filename=$name/g" "$tmp"

        mb "$tmp" > "results/$name.log" 2>&1

        rm -f "$tmp"
    ) &

    # Maximum 36 simultaneous jobs, 72 threads
    while (( $(jobs -rp | wc -l) >= 36 )); do
        wait -n
    done
done

wait
