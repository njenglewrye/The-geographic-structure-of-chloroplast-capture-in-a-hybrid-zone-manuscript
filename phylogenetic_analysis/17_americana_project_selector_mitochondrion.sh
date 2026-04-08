# CHECK THAT ALL AMERICANA SEQUENCES ARE INCLUDED

# run in mitochondrion_assemblies folder
#rm combined_mts_Sept2023.fasta
for f in ./consensus_sequences/*.fq; do
g=`echo $f | sed 's/.*\///g' | sed 's/\..*//g'`
seqtk seq -l0 $f > temp.fq # Convert to four-line fastq format if necessary
echo ">${g}" >> combined_mts_Sept2023.fasta # Add sequence name
seqtk seq -a temp.fq  | tail -n 1 >> combined_mts_Sept2023.fasta # Convert to fasta and add sequence line
rm temp.fq 
done


# A numbers

grep -P -A 1 ">A1-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A2-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A3-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A4-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A6-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A7-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A8$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A9-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A10-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A11-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A13-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A14$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A15-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A16-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A17-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A21-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A28-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A29-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A31$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A32-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A33-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A34-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A35-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A36$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A38-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A39-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A40-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A40$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A41-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A42-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A43-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A44-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A45-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A46-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A47-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A48$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A49-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta

# Field work 2022
grep -P -A 1 ">A53-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A54-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A55-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A56-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A57$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A58-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A59-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A60-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A62-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A63-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">A64-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta


# H numbers

grep -P -A 1 ">H59-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H60-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H61-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H62-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H70$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H71$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H70-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H83-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H86-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H92-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H95$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H101-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H102-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H103-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H104-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H105$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H105-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H106-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H166-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H167-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H177-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H214-.*$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H246$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta


# I numbers

grep -P -A 1 ">I2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I20$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I65$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I68$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I70$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I58$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I82$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-136$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-137$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-138$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-139$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-140$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-141$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-143$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-144$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-145$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-146$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-147$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-158$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-159$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-160$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-161$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-162$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-163$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-164$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-165$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-166$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-167$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-185$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-186$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-187$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-188$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta

# E numbers

grep -P -A 1 ">E1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E3$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E4$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E5$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E6$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E7$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E8$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E9$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E10$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E11$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E12$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E13$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E14$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E15$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E16$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E17$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E18$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E19$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E36$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E438$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E439$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E440$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E441$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E442$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E443$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E490$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E491$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E492$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E493$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E494$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E498$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E499$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E500$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E501$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E502$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E503$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E505$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E506$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E507$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E508$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E509$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E510$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E511$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E512$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E513$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E514$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E515$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E516$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E517$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E518$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E519$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E520$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E521$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E522$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E523$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E524$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E542$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E543$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E544$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E639$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E640$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E641$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1415$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1416$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1417$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1418$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1419$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1420$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1421$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1422$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1423$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1424$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1425$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1426$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1427$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1428$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1429$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1430$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1431$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1432$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1433$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1449$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1450$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1451$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1452$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1453$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1454$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1455$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1456$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1457$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1458$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1459$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1460$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1461$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1462$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1463$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1464$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1465$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1467$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1468$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1469$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1470$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1471$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1472$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1473$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1474$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1475$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1476$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1477$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1478$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1479$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1480$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1481$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1482$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1483$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1484$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1485$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1486$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1487$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1488$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1489$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1490$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1491$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1492$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1493$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1494$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1495$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1496$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1498$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1499$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1500$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1501$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1502$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1503$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1504$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1505$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1506$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1507$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1508$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1509$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1510$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1511$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1512$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1513$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1514$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1515$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1516$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1517$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1518$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1519$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1520$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1521$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1522$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1523$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1524$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1525$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1526$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1527$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1528$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1529$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1530$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1531$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1532$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1533$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1534$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1535$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1536$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1537$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1538$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1539$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1540$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1541$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1542$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1543$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1544$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1545$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1546$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1547$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1548$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1549$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1550$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1551$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1552$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1553$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1554$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1555$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1556$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1557$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1558$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1559$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1560$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1561$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1562$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1563$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1564$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1565$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1566$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1567$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1568$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1569$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1570$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1571$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1572$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1573$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1574$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1575$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1576$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1577$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1578$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1579$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1580$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1581$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1677$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1679$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1680$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1681$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1682$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1683$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1684$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1685$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1686$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1687$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1688$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1689$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1690$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1691$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1692$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1693$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1694$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1695$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1696$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1697$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1698$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1699$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1700$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1701$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1702$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1703$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1704$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1705$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1706$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1707$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1708$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1709$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1710$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1711$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1780$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1781$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1782$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1783$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1784$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1785$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1786$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1787$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1788$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1789$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1790$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1791$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1792$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1793$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1794$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1795$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1796$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1797$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1798$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1799$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1800$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1801$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1802$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1803$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1804$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1805$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1852$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1853$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1854$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1855$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1856$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1857$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1858$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1859$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1860$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1861$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1862$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1863$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1864$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1865$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1866$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1867$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1868$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1869$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1870$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1871$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1872$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1873$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1874$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1875$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1876$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1877$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1878$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1879$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1880$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1881$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1882$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1883$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1884$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1885$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1886$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1887$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1888$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1889$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1890$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1891$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1892$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1893$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1894$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1895$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1896$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1898$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1899$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1900$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1901$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1902$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1903$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1904$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1916$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1926$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1927$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E1928$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta

# Section Heuchera outgroups

# H. longiflora
grep -P -A 1 ">L1-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L1-3$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L3-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L3-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L6-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L6-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L9-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L14-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L14-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L20-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">L20-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">FL-25$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">FL-26$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">FL-27$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta

# H. alba
grep -P -A 1 ">H63-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H63-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H64-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">H64-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I67$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I-157$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I173$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I174$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I175$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I176$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I177$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I178$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I179$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">I180$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta
grep -P -A 1 ">E306-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta

# H. pubescens
grep -P -A 1 ">H96-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">H96-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">H96-3$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">H100-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">H100-7$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">H100-10$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1497$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1596$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1598$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1599$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1600$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1601$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1602$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1603$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1936$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 

# H. caroliniana 

grep -P -A 1 ">H216-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">H216-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">A50-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">A50-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">A50-4$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E35$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1434$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1435$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1436$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1438$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1905$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1911$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1915$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1921$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 
grep -P -A 1 ">E1924$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta 


# Distant outgroups

grep -P -A 1 ">H107-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. parvifolia
grep -P -A 1 ">H137-2$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. glabra
grep -P -A 1 ">A22-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. glomerulata
grep -P -A 1 ">A26-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera sanguinea
grep -P -A 1 ">H115-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera cylindrica var. glabella
grep -P -A 1 ">I51$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera mexicana var. mexicana
grep -P -A 1 ">I21$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera longipetala var. longipetala
grep -P -A 1 ">H164-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera bracteata
grep -P -A 1 ">H35$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera eastwoodiae
grep -P -A 1 ">H23-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera woodsiaphila
grep -P -A 1 ">A5-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. villosa
grep -P -A 1 ">H192-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera villosa var. arkansana
grep -P -A 1 ">H44-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera elegans
grep -P -A 1 ">H33$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera inconstans
grep -P -A 1 ">H22-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera wootonii
grep -P -A 1 ">H24-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera novomexicana
grep -P -A 1 ">H146$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera micrantha var. macropetala
grep -P -A 1 ">I6$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera maxima
grep -P -A 1 ">I90-C$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. inconstans
grep -P -A 1 ">A30-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. villosa
grep -P -A 1 ">A37-5$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta # H. missouriensis
grep -P -A 1 ">H170-3$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera parviflora var. parviflora
grep -P -A 1 ">H181-1$" combined_mts_Sept2023.fasta >> combined_mts.americana.fasta  # Heuchera puberula


# Count total samples
grep --no-filename ">" combined_mts.americana.fasta | sort | uniq | wc -l

# Detect duplicates (loci > 277) and bad samples (loci << 277) by enumerating loci per sample
for g in `grep --no-filename ">" combined_mts.americana.fasta | sort | uniq`; do 
echo $g; 
grep -P "${g}\$" combined_mts.americana.fasta | wc -l;  
done
