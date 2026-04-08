for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
do 
mafft --thread -6 --op 3 --ep 0.123 --auto ./gene_alignments/Locus_${i}.fa.americana.fasta > ./gene_alignments/Locus_${i}.aligned.fa; # Run mafft, allowing it to decide best parameters
# The higher gap cost is important in regions with long strings of Ns
# I tried replacing auto with L-INS-i, but runtimes were unacceptable
# Make sure the taxon order is unchanged in mafft output -- this is important for concatenating correctly when there is more than one sample per species present.
# Order should be globbing alphabetization
done

# Change N to - so our filtering works correctly
sed -i 's/N/-/g' ./gene_alignments/Locus_*.aligned.fa


for (( i=1 ; i<=278; i++ )); do
pxclsq -s ./gene_alignments/Locus_${i}.aligned.fa -p 0.5 > ./gene_alignments/Locus_${i}.50missing.fa
done

# Remove high missing data TAXA

for (( i=1 ; i<=278; i++ )); do
#python3 removemissingdatataxa.py Locus_${i}.50missing.fa Locus_${i}.50missing.50taxadropped.fa 0.5
#python3 removemissingdatataxa.py Locus_${i}.50missing.fa Locus_${i}.50missing.80taxadropped.fa 0.8
python3 removemissingdatataxa.py ./gene_alignments/Locus_${i}.50missing.fa ./gene_alignments/Locus_${i}.50missing.80taxadropped.fa 0.2
done

# Gene trees for ASTRAL

for (( i=1 ; i<=278; i++ )); do
raxmlHPC-PTHREADS-AVX -f a -m GTRGAMMA -s ./gene_alignments/Locus_${i}.50missing.80taxadropped.fa -n Locus_${i} -x $RANDOM -p $RANDOM -N 100 -T 10
done

# Concatenate alignments

pxcat -s ./gene_alignments/*.50missing.fa -p partition.nick_final_bwa.txt -o concatenated.nick_final_bwa.fasta

# Reformat partition to look like this (no hashtags):

# GTR+G, name = ###-###
# GTR+G, name = ###-###
# GTR+G, name = ###-###

sed -i 's/DNA/GTR+G/g' partition.nick_final_bwa.txt

# Remove high missing data TAXA (this time on the concatenated alignment)

python3 removemissingdatataxa.py concatenated.nick_final_bwa.fasta concatenated.nick_final_bwa.80taxadropped.fasta 0.8

# Run concatenated tree

raxml-ng -all --model partition.nick_final_bwa.txt --msa concatenated.nick_final_bwa.80taxadropped.fasta --prefix nick_final_bwa --seed $RANDOM --tree pars{10} --threads 60

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
java -jar astral.5.7.8.jar -i all_gene_trees.bs10.tre -o astral.nick_final_bwa.tre 2> astral.nick_final_bwa.tre.log
