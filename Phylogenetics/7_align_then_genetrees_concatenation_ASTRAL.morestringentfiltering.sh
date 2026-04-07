# Do the alignments

for (( i=1 ; i<=278; i++ )); do 
mafft --thread -4 --op 3 --ep 0.123 --auto Locus${i}.Final.Contigs.fasta.americana.fasta.unique.fasta > Locus_${i}.aligned.fa; # Run mafft, allowing it to decide best parameters
# The higher gap cost is important in regions with long strings of Ns
# I tried replacing auto with L-INS-i, but runtimes were unacceptable
# Make sure the taxon order is unchanged in mafft output -- this is important for concatenating correctly when there is more than one sample per species present.
done

# Remove high missing data SITES

for (( i=1 ; i<=278; i++ )); do
pxclsq -s Locus_${i}.aligned.fa -p 0.5 > Locus_${i}.50missing.fa
done

# Remove high missing data TAXA

for (( i=1 ; i<=278; i++ )); do
#python3 removemissingdatataxa.py Locus_${i}.50missing.fa Locus_${i}.50missing.50taxadropped.fa 0.5
#python3 removemissingdatataxa.py Locus_${i}.50missing.fa Locus_${i}.50missing.80taxadropped.fa 0.8
python3 removemissingdatataxa.py Locus_${i}.50missing.fa Locus_${i}.50missing.80taxadropped.fa 0.2
done

# Gene trees for ASTRAL

for (( i=1 ; i<=278; i++ )); do
raxmlHPC-PTHREADS-AVX -f a -m GTRGAMMA -s Locus_${i}.50missing.80taxadropped.fa -n Locus_${i} -x $RANDOM -p $RANDOM -N 100 -T 10
done

# Concatenate alignments

pxcat -s *.50missing.fa -p partition.nick_final.txt -o concatenated.nick_final.fasta

# Reformat partition to look like this (no hashtags):

# GTR+G, name = ###-###
# GTR+G, name = ###-###
# GTR+G, name = ###-###

sed -i 's/DNA/GTR+G/g' partition.nick_final.txt

# Remove high missing data TAXA (this time on the concatenated alignment)

python3 removemissingdatataxa.py concatenated.nick_final.fasta concatenated.nick_final.80taxadropped.fasta 0.8


# Run concatenated tree

raxml-ng -all --model partition.nick_final.txt --msa concatenated.nick_final.80taxadropped.fasta --prefix nick_final --seed $RANDOM --tree pars{10} --threads 60

# Generate input files for ASTRAL
# Combine all gene trees into one file
cat RAxML_bipartitions.Locus* > all_gene_trees.tre
# Check that the gene tree count is correct
wc -l all_gene_trees.tre
# Suppress branches with support less than 10 per ASTRAL documentation
nw_ed  all_gene_trees.tre 'i & b<=10' o > all_gene_trees.bs10.tre
# Download newest ASTRAL
git clone https://github.com/smirarab/ASTRAL
unzip ./ASTRAL/Astral*
rm -rf ASTRAL/
cp all_gene_trees.bs10.tre ./Astral/
cd Astral
# Run ASTRAL
java -jar astral.5.7.8.jar -i all_gene_trees.bs10.tre -o astral.nick_final.tre 2> astral.nick_final.tre.log


###############
# Repeat analyses with spruceup
###############

# Set up concatenated file and run spruceup (developer recommendation)
rm Locus_4.50missing.80taxadropped.fa
mkdir /mnt/Botbot/nick/nick_final_spruceup/
pxcat -s *.50missing.80taxadropped.fa -p /mnt/Botbot/nick/nick_final_spruceup/partition.spruceup.txt -o /mnt/Botbot/nick/nick_final_spruceup/concatenated.spruceup.fasta
conda activate spruceup
python -m spruceup config.conf
ls 

# split spruceup output back to gene alignments
raxmlHPC-PTHREADS-AVX -f s -s 0.95_lognorms-cutoff-spruceup-trimmed50.80taxadropped.fasta -m GTRGAMMA -n spruceup -q partition.spruceup.txt

# format file names
rename 's/.*Locus/Locus/g' *.phy
rename 's/fa\.phy/spruceup.phy/g' *phy

# clean up directory
mkdir spruceup_output
mkdir ./spruceup_output/figures
mv *.png ./spruceup_output/figures/
mv 0* spruceup_output/

# remove only-missing sequences generated at the concatenation step
for f in *.phy; do pxs2fa -s $f > $f.fa; done
for f in *.phy.fa; do
python3 removemissingdatataxa.py $f tmp 0.8 && mv tmp $f;
done

# Gene trees for ASTRAL
for (( i=1 ; i<=278; i++ )); do
raxmlHPC-PTHREADS-AVX -f a -m GTRGAMMA -s Locus_${i}.50missing.80taxadropped.spruceup.phy.fa -n Locus_${i} -x $RANDOM -p $RANDOM -N 100 -T 10
done

###############
# ASTRAL spruceup
###############

# Generate input files for ASTRAL
# Combine all gene trees into one file
cat RAxML_bipartitions.Locus* > all_gene_trees.tre
# Check that the gene tree count is correct
wc -l all_gene_trees.tre
# Suppress branches with support less than 10 per ASTRAL documentation
nw_ed  all_gene_trees.tre 'i & b<=10' o > all_gene_trees.bs10.tre
# Download newest ASTRAL
git clone https://github.com/smirarab/ASTRAL
unzip ./ASTRAL/Astral*
rm -rf ASTRAL/
cp all_gene_trees.bs10.tre ./Astral/
cd Astral
# Run ASTRAL
java -jar astral.5.7.8.jar -i all_gene_trees.bs10.tre -o astral.nick_final.tre 2> astral.nick_final.tre.log


###############
# Concatenation spruceup
###############

# Concatenate alignments
# It's a little confusing because there are two concatenation operations here. 
# The first is to generate SpruceUp input.
# The second here is made from SpruceUp output and is named nick_final_spruceup

pxcat -s *.spruceup.phy.fa -p partition.nick_final_spruceup.txt -o concatenated.nick_final_spruceup.fasta

# Reformat partition to look like this (no hashtags):

# GTR+G, name = ###-###
# GTR+G, name = ###-###
# GTR+G, name = ###-###

sed -i 's/DNA/GTR+G/g' partition.nick_final_spruceup.txt

# Remove high missing data TAXA (this time on the concatenated alignment)

python3 removemissingdatataxa.py concatenated.nick_final_spruceup.fasta concatenated.nick_final_spruceup.80taxadropped.fasta 0.8

# Run concatenated tree

raxml-ng -all --model partition.nick_final_spruceup.txt --msa concatenated.nick_final_spruceup.80taxadropped.fasta --prefix nick_final --seed $RANDOM --tree pars{10} --threads 40




