mkdir consensus_sequences
mkdir tmp

bwa index KR559021_nochloroplast.fasta 

# Old data

for file_R1 in ./../heuchera_reads_legacy_renamed_consolidated/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`

bwa mem -t 4 KR559021_nochloroplast.fasta ./../heuchera_reads_legacy_renamed_consolidated/trimmed/${name}_P1.fastq  ./../heuchera_reads_legacy_renamed_consolidated/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done


# February 2020

for file_R1 in ./../heuchera_reads_NovogeneFeb2020/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta ./../heuchera_reads_NovogeneFeb2020/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneFeb2020/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done


# July 2020

for file_R1 in ./../heuchera_reads_NovogeneJuly2020/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta ./../heuchera_reads_NovogeneJuly2020/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneJuly2020/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done

# November 2020

for file_R1 in ./../heuchera_reads_NovogeneNovember2020/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta ./../heuchera_reads_NovogeneNovember2020/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneNovember2020/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done

# May 2021 batch

for file_R1 in ./../heuchera_reads_NovogeneMay2021/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done


# July 2021 batch

for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done

# September 2021 batch

for file_R1 in ./../heuchera_reads_NovogeneSeptember2021/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done





# November 2022 batch

for file_R1 in ./../heuchera_reads_NovogeneNovember2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../heuchera_reads_NovogeneNovember2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneNovember2022/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done

# Duplicates combined May 2022 batch

for file_R1 in ./../heuchera_reads_duplicatescombinedMay2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done


# Duplicates combined November 2022 batch

for file_R1 in ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done


# July 2024 batch

for file_R1 in ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR559021_nochloroplast.fasta  ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/${name}_P1.fastq  ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/${name}_P2.fastq > ${name}.temp.mt.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.mt.sorted -o ${name}.temp.mt.bam ${name}.temp.mt.sam
samtools mpileup -uf KR559021_nochloroplast.fasta  ${name}.temp.mt.bam > ${name}.bcf.mt.tmp
bcftools call --ploidy 1 -c ${name}.bcf.mt.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.mt.consensus.fq
rm ${name}.temp.mt.sam ${name}.temp.mt.bam ${name}.bcf.mt.tmp ./tmp/${name}.aln.mt.sorted*

done
