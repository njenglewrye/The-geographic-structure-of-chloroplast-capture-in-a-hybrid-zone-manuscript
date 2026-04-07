# I used to align but note that the consensus sequence pipeline produces already aligned sequences
# You still have to open in MEGAX, import as alignment then export, because trailing ends of missing data are not filled in
#mafft --thread -4 --op 3 --ep 0.123 --auto combined_cps.fasta > combined_cps.aligned.fa; # Run mafft, allowing it to decide best parameters

# Change N to - so our filtering works correctly
cp combined_cps.americana.fasta combined_cps.americana.original.fasta
sed -i 's/N/-/g' combined_cps.americana.fasta

# Remove high missing data SITES
pxclsq -s combined_cps.americana.fasta -p 0.5 > combined_cps.americana.50missing.fasta

# Remove high missing data TAXA, making sure that python script is in the working directory
python3 removemissingdatataxa.py combined_cps.americana.50missing.fasta combined_cps.americana.50missing.80taxadropped.fasta 0.2


raxml-ng -all --model GTR+G --msa combined_cps.americana.50missing.80taxadropped.fasta --prefix chloroplast --seed $RANDOM --tree pars{10} --bs-trees 100 --threads 32
