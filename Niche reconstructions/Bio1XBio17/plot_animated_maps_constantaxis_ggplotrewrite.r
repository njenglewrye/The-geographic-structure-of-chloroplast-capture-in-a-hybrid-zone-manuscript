library(raster)
library(ggplot2)
library(sf)
library(RColorBrewer)
library(gridExtra)

world <- st_as_sf(maps::map("world", plot = FALSE, fill = TRUE))

table = read.table("~/Documents/zachos_etal_2001_d18O_temperatureEpstein1953.txt", sep = "\t", header = TRUE)
table = na.omit(table)


datafiles <- rev(Sys.glob("*.tif")) # Reverse so oldest is first. This should glob correctly

# Make sure all plotting devices are off -- too many will create errors.
for (i in dev.list()[1]:dev.list()[length(dev.list())]) {
	dev.off()
}
dev.list()

for(i in 1:NROW(datafiles)){
	dev.new(width=4.539062, height=5.356863)
	tempraster <- raster(datafiles[i])
	crs(tempraster) <- CRS("+init=epsg:4326")
	tempraster_df <- as.data.frame(tempraster, xy = TRUE)
	names(tempraster_df)[3] <- "Probability"
	map <- ggplot() + geom_raster(data = tempraster_df, aes(x = x, y = y, fill = Probability)) + 
		scale_fill_gradientn(colours = c("white", brewer.pal(8, "Blues")), na.value = "white", limits = c(0,1)) + 
		labs(title = gsub(".combined.tif", " mya", datafiles[i])) + geom_sf(data = world, fill = NA, color = "black") + 
		theme_minimal() + coord_sf(crs = 4326, xlim = c(-49.0, -178.2), ylim = c( 6.6, 83.3), expand = FALSE)
	age = as.numeric(gsub(".combined.tif", "", datafiles[i]))
	line_plot <- ggplot(table, aes(x = Age.Ma, y = tempC_5pt)) + scale_x_reverse(limits = c(3.3, 0)) + scale_y_continuous(limits = c(-1.5, 5.5)) + geom_line() + 
		geom_point(aes(x = age, y = approx(table$Age.Ma, table$tempC_5pt, age)$y), color = "red", size = 3) +  
		theme_minimal() + labs(title = "Global temperature", x = "Time",  y = "Temperature") + theme(plot.title = element_text(hjust = 0.5))
	grid.arrange(map, line_plot, ncol = 1, heights = c(3, 2))
	dev.copy(pdf, gsub(".combined.tif", ".plot.pdf", datafiles[i]))
	for (i in dev.list()[1]:dev.list()[length(dev.list())]) {
   		dev.off()
	}
	dev.list()
}




