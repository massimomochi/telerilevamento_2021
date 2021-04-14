# R_code_copernicus.r
# Visualizing Copernicus data

install.packages("ncdf4")
library(raster)
library(ncdf4)

setwd("C:/lab/") # Windows

albedo <- raster("")

cl <- colorRampPalette(c('light blue','green','red','yellow'))(100) 
plot(albedo, col=cl)

albedores <- aggregate(albedo, fact=100)
plot(albedores, col=cl)
