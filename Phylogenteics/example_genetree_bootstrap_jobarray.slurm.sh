#!/bin/bash
#SBATCH --job-name=rax_genetree.%j
#SBATCH --nodes=1 #dont change this
#SBATCH --ntasks=1    ## set this to one for a threaded but not MPI run; dont change this
#SBATCH --cpus-per-task=10 ## set this to the number of shards you have in the database; #must be in multiples of 4
#SBATCH --mem=8gb
#SBATCH -t 200:00:00
#SBATCH --output=rax_genetree.%j.out
#SBATCH --error=rax_genetree.%j.err
#SBATCH --array=1-278 #One run per sample
echo This is task $SLURM_ARRAY_TASK_ID
echo -e "\nInfo: Starting a job on $(date) on $(hostname) in $(pwd).\n"

module load raxml-standard

raxmlHPC-PTHREADS-AVX -f a -m GTRGAMMA -s ./gene_alignments/Locus_${SLURM_ARRAY_TASK_ID}.50missing.80taxadropped.fa -n Locus_${SLURM_ARRAY_TASK_ID} -x $RANDOM -p $RANDOM -N 100 -T 10
