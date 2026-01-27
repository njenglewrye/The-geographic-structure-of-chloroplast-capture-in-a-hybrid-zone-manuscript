#!/bin/bash
#SBATCH --job-name=rax_cat.%j
#SBATCH --nodes=1 #dont change this
#SBATCH --ntasks=1    ## set this to one for a threaded but not MPI run; dont change this
#SBATCH --cpus-per-task=40 ## set this to the number of shards you have in the database; #must be in multiples of 4
#SBATCH -t 200:00:00
#SBATCH --output=rax_cat.%j.out
#SBATCH --error=rax_cat.%j.err

module load raxml-ng-cluster

raxml-ng -all --model partition.nick_final.txt --msa concatenated.nick_final.80taxadropped.fasta --prefix nick_final --seed $RANDOM --tree pars{10} --threads 40

