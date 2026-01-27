# This one drops only the missing values for each point, so point associations are lost
mkdir pnos_directsampling_no_missing_data_no_point_associations
for i in /mnt/Botbot/nitfix/Saxifragales_all_layers_30s/*.asc; do
python3 extract_pointvalues_evenhigherthroughput.py ${i} ./occurrences_only/
done

