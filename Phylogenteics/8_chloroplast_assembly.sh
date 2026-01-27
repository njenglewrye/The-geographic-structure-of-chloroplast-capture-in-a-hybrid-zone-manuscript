mkdir consensus_sequences
mkdir tmp

bwa index KR478645.heuchera_parviflora.oneIR.fasta 

## New data batch
#
#for file_R1 in ./../all_NEW_heuchera_reads_renamed_consolidated/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#bwa mem -t 4 heuchera_parviflora_cp.fasta ./../all_NEW_heuchera_reads_renamed_consolidated/trimmed/${name}_P1.fastq  ./../all_NEW_heuchera_reads_renamed_consolidated/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
#samtools mpileup -uf heuchera_parviflora_cp.fasta ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
#bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
#rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*
#
#done
#
#
## Old data
#
#for file_R1 in ./../all_heuchera_reads_renamed_consolidated/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 heuchera_parviflora_cp.fasta ./../all_heuchera_reads_renamed_consolidated/trimmed/${name}_P1.fastq  ./../all_heuchera_reads_renamed_consolidated/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
#samtools mpileup -uf heuchera_parviflora_cp.fasta ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
#bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
#rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*
#
#done

## May 2021 batch
#
#for file_R1 in ./../heuchera_reads_NovogeneMay2021/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
#samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
#bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
#rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*
#
#done


# July 2021 batch

for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*

done

# September 2021 batch

for file_R1 in ./../heuchera_reads_NovogeneSeptember2021/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*

done





# November 2022 batch

for file_R1 in ./../heuchera_reads_NovogeneNovember2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../heuchera_reads_NovogeneNovember2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneNovember2022/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*

done

# Duplicates combined May 2022 batch

for file_R1 in ./../heuchera_reads_duplicatescombinedMay2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*

done


# Duplicates combined November 2022 batch

for file_R1 in ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*

done


# July 2024 batch

for file_R1 in ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 KR478645.heuchera_parviflora.oneIR.fasta  ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/${name}_P1.fastq  ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/${name}_P2.fastq > ${name}.temp.cp.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.cp.sorted -o ${name}.temp.cp.bam ${name}.temp.cp.sam
samtools mpileup -uf KR478645.heuchera_parviflora.oneIR.fasta  ${name}.temp.cp.bam > ${name}.bcf.cp.tmp
bcftools call --ploidy 1 -c ${name}.bcf.cp.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.cp.consensus.fq
rm ${name}.temp.cp.sam ${name}.temp.cp.bam ${name}.bcf.cp.tmp ./tmp/${name}.aln.cp.sorted*

done




