# Navigate to an atram folder you want to work in

mkdir dataset
mkdir assemblies

## July 2020 data batch
#for file_R1 in ./../heuchera_reads_NovogeneJuly2020/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneJuly2020/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneJuly2020/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assembies_july2020/lib_${name}.Locus_${i}.atram2 --log-file ./assembies_july2020/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done

## November 2020 data batch
#for file_R1 in ./../heuchera_reads_NovogeneNovember2020/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneNovember2020/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneNovember2020/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_november2020/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_november2020/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done

## May 2021 data batch
#for file_R1 in ./../heuchera_reads_NovogeneMay2021/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneMay2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_may2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_may2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done

## July 2021 data batch
##part 1
#for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/E1[5-6]*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_july2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_july2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done
#
##part2
#for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/E1[7-8]*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_july2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_july2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done
#
#
##part3
#for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/E19*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_july2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_july2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done
#
##part4
#for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/[AH]*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_july2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_july2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done
#
#for file_R1 in ./../heuchera_reads_NovogeneJuly2021/trimmed/E4*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneJuly2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_july2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_july2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done

# September 2021 data batch

#for file_R1 in ./../heuchera_reads_NovogeneSeptember2021/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_NovogeneSeptember2021/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_sept2021/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_sept2021/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done

# May 2022 all redos combined

#for file_R1 in ./../heuchera_reads_duplicatescombinedMay2022/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset/lib_${name} --end-1 ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_duplicatescombinedMay2022/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_duplicatescombinedMay2022/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_duplicatescombinedMay2022/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done




# November 2022 all redos combined
#
#mkdir dataset2
#
#for file_R1 in ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/*_P1.fastq; do
#name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`
#
#python3 ./aTRAM/atram_preprocessor.py -b ./dataset2/lib_${name} --end-1 ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P1.fastq --end-2 ./../heuchera_reads_duplicatescombinedNovember2022/trimmed/${name}_P2.fastq
#
#for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
#do 
#./aTRAM/atram.py -b ./dataset2/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_duplicatescombinedNovember2022/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_duplicatescombinedNovember2022/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
#done
#
#done


# July 2024

mkdir dataset2

for file_R1 in ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`

python3 ./aTRAM/atram_preprocessor.py -b ./dataset2/lib_${name} --end-1 ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/${name}_P1.fastq --end-2 ./../../../sequencing_reads_processed/heuchera_reads_NovogeneJuly2024/trimmed/${name}_P2.fastq

for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
do 
./aTRAM/atram.py -b ./dataset2/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_10_July2024/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_10_July2024/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
done

done


# August 2025

mkdir dataset2

for file_R1 in /mnt/Botbot/sequencing_reads_processed/heuchera_reads_NovogeneAugust2025/trimmed/*_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`

python3 ./aTRAM/atram_preprocessor.py -b ./dataset2/lib_${name} --end-1 /mnt/Botbot/sequencing_reads_processed/heuchera_reads_NovogeneAugust2025/trimmed/${name}_P1.fastq --end-2 /mnt/Botbot/sequencing_reads_processed/heuchera_reads_NovogeneAugust2025/trimmed/${name}_P2.fastq

for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
do 
./aTRAM/atram.py -b ./dataset2/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_12_August2025/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_12_August2025/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
done

done


# December 2025 -- didn't bother with new folder

mkdir dataset2

for file_R1 in /mnt/Botbot/sequencing_reads_processed/heuchera_reads_NovogeneAugust2025/trimmed/E3407-subset_P1.fastq; do
name=`echo $file_R1 | sed 's/_P1\..*//g' | sed 's/.*\///g'`

python3 ./aTRAM/atram_preprocessor.py -b ./dataset2/lib_${name} --end-1 /mnt/Botbot/sequencing_reads_processed/heuchera_reads_NovogeneAugust2025/trimmed/${name}_P1.fastq --end-2 /mnt/Botbot/sequencing_reads_processed/heuchera_reads_NovogeneAugust2025/trimmed/${name}_P2.fastq

for (( i=1 ; i<=278; i++ )); # Iterate through locus numbers
do 
./aTRAM/atram.py -b ./dataset2/lib_${name} -q ./ref_heu/Locus_${i}.fasta -i 5 --cpus 16 --no-long-reads -o ./assemblies_12_August2025/lib_${name}.Locus_${i}.atram2 --log-file ./assemblies_12_August2025/lib_${name}.Locus_${i}.log -a spades # --temp-dir temp
done

done

