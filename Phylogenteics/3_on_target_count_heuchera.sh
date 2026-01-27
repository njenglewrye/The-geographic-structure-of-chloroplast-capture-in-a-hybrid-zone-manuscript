# NUCLEAR
for file_R1 in *_P1.fastq; do # run on trimmed files
file_R2=`echo ${file_R1} | sed 's/_P1\./_P2./'`

name=`echo $file_R1 | sed 's/_P1\..*//g'`

#run BWA
bwa mem -t 12 heuchera_loci $file_R1 $file_R2 > $file_R1.sam

# Individual locus counts
samtools view -F 260 $file_R1.sam | cut -f 3 | sort | uniq -c | awk '{printf("%s\n", $1)}' > "${name}_counts.txt"

# Total counts
awk '{s+=$1} END {print s}' "${name}_counts.txt" | sed "s/^/${name}\t/g" >> final_ontarget_counts.txt 

rm $file_R1.sam

done

# CHLOROPLAST
for file_R1 in *_P1.fastq; do # run on trimmed files
file_R2=`echo ${file_R1} | sed 's/_P1\./_P2./'`

name=`echo $file_R1 | sed 's/_P1\..*//g'`

#run BWA
bwa mem -t 12 KR478645.fasta $file_R1 $file_R2 > $file_R1.cp.sam

# Individual locus counts
samtools view -F 260 $file_R1.cp.sam | cut -f 3 | sort | uniq -c | awk '{printf("%s\n", $1)}' > "${name}_counts.chloroplast.txt"

# Total counts
awk '{s+=$1} END {print s}' "${name}_counts.chloroplast.txt" | sed "s/^/${name}\t/g" >> final_ontarget_counts.chloroplast.txt 

rm $file_R1.cp.sam

done
