mkdir consensus_sequences
mkdir tmp

bwa index AnnotatedTargetLoci_heuchera.fasta

## First data batch
#
#for file_R1 in ./../heuchera_reads_legacy_renamed_consolidated/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_legacy_renamed_consolidated/trimmed/${name}_P1.fastq  ./../heuchera_reads_legacy_renamed_consolidated/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
#samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
#bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
#rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*
#
#done
#
#
## February data batch
#
#for file_R1 in ./../heuchera_reads_NovogeneFeb2020/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneFeb2020/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneFeb2020/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
#samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
#bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
#rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*
#
#done
#
## July data batch
#
#for file_R1 in ./../heuchera_reads_NovogeneJuly2020/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneJuly2020/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneJuly2020/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
#samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
#bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
#rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*
#
#done
#
## November data batch
#
#for file_R1 in ./../heuchera_reads_NovogeneNovember2020/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneNovember2020/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneNovember2020/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
#samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
#bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
#rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*
#
#done
#
## May data batch
#
#for file_R1 in ./../heuchera_reads_NovogeneMay2021/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
#samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
#bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
#rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*
#
#done
#
## July 2021 data batch
#
#for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam
#
## Make sure to set haploid for chloroplast data
#samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
#samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
#bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
#rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*
#
#done

# September 2021 data batch

for file_R1 in ./../heuchera_reads_NovogeneSeptember2021/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*

done


# May 2022 all redos combined

for file_R1 in ./../heuchera_reads_duplicatescombinedMay2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*

done

# November 2022

for file_R1 in ./../heuchera_reads_NovogeneNovember2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_NovogeneNovember2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_NovogeneNovember2022/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*

done


# November 2022 all redos combined

for file_R1 in ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
bwa mem -t 4 AnnotatedTargetLoci_heuchera.fasta ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P1.fastq  ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P2.fastq > ${name}.temp.nuc.sam

# Make sure to set haploid for chloroplast data
samtools sort -T ./tmp/${name}.aln.nuc.sorted -o ${name}.temp.nuc.bam ${name}.temp.nuc.sam
samtools mpileup -uf AnnotatedTargetLoci_heuchera.fasta ${name}.temp.nuc.bam > ${name}.bcf.nuc.tmp
bcftools call -c ${name}.bcf.nuc.tmp | vcfutils.pl vcf2fq > ./consensus_sequences/${name}.nuc.consensus.fq
rm ${name}.temp.nuc.sam ${name}.temp.nuc.bam ${name}.bcf.nuc.tmp ./tmp/${name}.aln.nuc.sorted*

done
