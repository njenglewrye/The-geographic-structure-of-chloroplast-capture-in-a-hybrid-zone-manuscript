for f in *.tre; do
g=`echo $f | sed 's/\.tre//g'`
pxrlt -t $f -c old_names.txt -n new_names.txt > $g.renamed.tre
done