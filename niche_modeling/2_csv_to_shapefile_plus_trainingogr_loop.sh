# Paste this material into a file called aaa_coord.vrt in the working directory
'''
<OGRVRTDataSource>
	<OGRVRTLayer name="output">
		<SrcDataSource>test.csv</SrcDataSource>
		<GeometryType>wkbPoint</GeometryType>
		<LayerSRS>WGS84</LayerSRS>
		<GeometryField encoding="PointFromColumns" x="X" y="Y"/>
	</OGRVRTLayer>
</OGRVRTDataSource>
'''


# Create vrt files
for i in ./occurrence_niche_model/*.csv; do 
f=`echo $i | sed 's/\.csv//g' | sed 's/.*\///g'`
echo $f
cp aaa_coord.vrt ./occurrence_niche_model/${f}.vrt
sed -i "s/output/${f}/g" ./occurrence_niche_model/${f}.vrt
sed -i "s/coord/${f}/g" ./occurrence_niche_model/${f}.vrt
sed -i "s/test\.csv/${f}.csv/g" ./occurrence_niche_model/${f}.vrt
done


# Write point shapefiles
cd occurrence_niche_model
for f in *.csv; do 
f=$(sed 's/\.csv//g' <<< $f)
ogr2ogr -f "ESRI Shapefile" ${f}.shp ${f}.vrt
done

# Iterate over csv files for the clipping region calculation
for f in *.shp; do
./../training_regions_ogr.py ${f} ./../terr-ecoregions-TNC/tnc_terr_ecoregions.shp; 
done

