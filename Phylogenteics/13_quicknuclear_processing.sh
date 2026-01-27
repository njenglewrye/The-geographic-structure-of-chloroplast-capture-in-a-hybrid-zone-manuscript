rm combined_nuc.fq # Remove residual files if this is run more than once due to a problem

for f in ./consensus_sequences/*.fq; do
seqtk seq -l0 ${f} > temp.fq # Convert to four-line fastq format if necessary
seqtk seq -a temp.fq > ${f}.fa # Convert to fasta
done

for f in ./consensus_sequences/*.fa; do
g=`echo $f | sed 's/\.nuc\.consensus\.fq\.fa//'g | sed 's/.*\///g'`
#echo $g
sed -i "s/>Locus/>${g}_Locus/" ${f} # Assign sample names
done

sed -i 's/_*$//g' ./consensus_sequences/*.fa # Remove trailing underscore in locus names


for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
do 
grep -A 1 -h "Locus_${i}$" ./consensus_sequences/*.fa | sed '/^--$/d' > Locus_${i}.fa # This step reorganizes the sequence files -- before they were by sample, but afterwards they will be by locus; the sed is to remove grep match separators
sed -i 's/.*consensus.fa[-:]//' Locus_${i}.fa # Remove further grep formatting
done

sed -i 's/_Locus.*//' Locus_*.fa # Remove locus labels from taxon labels to enable concatenation in Geneious, etc.


mkdir gene_alignments
mv Locus_*.fa ./gene_alignments/



# OPTIONAL
# Sample validation based on Locus 1
makeblastdb -in heuchereae_complete_BWA_locus1.fasta -dbtype nucl -title heuchereae_complete_BWA_locus1

mkdir consensus_sequences_locus1
cp ./consensus_sequences/*.fa ./consensus_sequences_locus1/
cd ./consensus_sequences_locus1/
for f in *.fa; do
head -2 $f > tmp && mv tmp $f; 
done
cd ..

for file in ./consensus_sequences_locus1/*.fa; do
seqtk seq -a ${file} > temp.fa
blastn -db heuchereae_complete_BWA_locus1.fasta -query temp.fa -outfmt "6 sseqid pident" | sort -k2 -nr | head -20 > ${file}.report
rm temp.fa
done
