# R_code_copernicus.r
# Visualizing Copernicus data

install.packages("ncdf4")
library(raster)
library(ncdf4)

setwd("C:/lab/") # Windows

albedo <- raster("c_gls_ALBH_202006130000_GLOBE_PROBAV_V1.5.1.nc") # mi sono perso il passaggio per scaricare questo file, ho solo copiato il nome

cl <- colorRampPalette(c('light blue','green','red','yellow'))(100) 
plot(albedo, col=cl)

#resampling 
albedores <- aggregate(albedo, fact=100)
plot(albedores, col=cl)
