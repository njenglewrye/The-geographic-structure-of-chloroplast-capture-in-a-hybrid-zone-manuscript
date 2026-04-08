# To run fastqc on one lane
cd trimmed
mkdir stats

for file_R1 in *_P1.fastq; do # run on trimmed files
file_R2=`echo ${file_R1} | sed 's/_P1\./_P2./'`
name=`echo $file_R1 | sed 's/_P1\..*//g'`
cat $file_R1 $file_R2 > $name.fastq
./FastQC/fastqc --outdir=./stats $name.fastq
rm $name.fastq
done

# Have directory of fastqc zip files, only of one read direction and one lane, in a subfolder, cd to tubfolder

cd stats
find . -name '*.zip' -exec unzip {} \;

for i in ./*/fastqc_data.txt; do cp "${i}" "${i%/*}_fastqcdata.txt"; done

# remove zip files

grep 'Total Deduplicated Percentage' ./*_fastqcdata.txt > AAA_duplicates.txt
sed -i 's/^\.\///g' AAA_duplicates.txt
sed -i 's/_fastqc.*\t/\t/g' AAA_duplicates.txt
grep 'Total Sequences' ./*_fastqcdata.txt > AAA_sequencenumber.txt
sed -i 's/^\.\///g' AAA_sequencenumber.txt
sed -i 's/_fastqc.*\t/\t/g' AAA_sequencenumber.txt
grep 'Sequence length' ./*_fastqcdata.txt > AAA_sequencelength.txt
sed -i 's/^\.\///g' AAA_sequencelength.txt
sed -i 's/_fastqc.*-/\t/g' AAA_sequencelength.txt

rm *.zip
find . -name "*fastqc" -type d -exec rm -rf '{}' \; # careful with this one!!!

