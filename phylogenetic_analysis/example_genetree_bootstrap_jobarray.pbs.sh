#!/bin/bash
#$ -N rax_genetree # Job name
#$ -cwd # Run in current directory
#$ -pe smp 10 # processor
#$ -l h_vmem=1G # 8 gigabytes per processor
#$ -l s_rt=200:00:00 # Soft time limit
#$ -l h_rt=200:00:00 # Hard time limit
#$ -M nje59@msstate.edu
#$ -m ea
#$ -o raxml.log
#$ -e raxml.err
#$ -t 1-278

module load raxml-standard

raxmlHPC-PTHREADS-AVX -f a -m GTRGAMMA -s ./gene_alignments/Locus_${SGE_TASK_ID}.50missing.80taxadropped.fa -n Locus_${SGE_TASK_ID} -x $RANDOM -p $RANDOM -N 100 -T 10
