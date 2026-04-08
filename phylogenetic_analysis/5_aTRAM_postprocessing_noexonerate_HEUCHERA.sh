# Version for Heuchera loci
# aTRAM 2 file names and headers

# Make sure to get rid of old output
# rm *Final.Contigs.fasta

cd ./heuchera_atram_assemblies/

for (( z=1 ; z<=278; z++ )); do
echo $z

for file in ./assemblies*/*Locus_${z}.filtered_contigs.fasta; do

# Process the filename into a sample name
g=`echo $file | sed 's/.*\///g' | sed 's/.*\.lib_//g' | sed 's/_Locus.*//g'`
head -2 "${file}" | sed "s/>.*/>${g}/g" >> "Locus${z}.Final.Contigs.fasta"

done
done

rm Locus4.Final.Contigs.fasta # This will be empty
