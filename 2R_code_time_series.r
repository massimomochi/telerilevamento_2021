# Time series analysis
# Greenland increase of temperature
# Data and code from EManuela Cosma

install.packages("raster")

library(raster)

setwd("C:/lab/greenland") # Windows

library(raster)


lezione precedente


install.packages("rasterVis")

library(rasterVis)

rlist <- list.files(pattern="lst")
rlist

 

import <- lapply(rlist,raster)
import

 

TGr <- stack(import)

cl <- colorRampPalette(c("blue","light blue","pink","red"))(100)
levelplot(TGr,col.regions=cl,main="Summer land surface temperature",names.attr=c("July 2000","July 2005", "July 2010", "July 2015"))

levelplot(TGr,col.regions=cl, names.attr=c("July 2000","July 2005", "July 2010", "July 2015")) #
levelplot(TGr,col.regions=cl, main="LST variation in time",
          names.attr=c("July 2000","July 2005", "July 2010", "July 2015"))

meltlist <- list.files(pattern="melt")
meltlist

 
melt_import <- lapply(meltlist,raster)


melt <- stack(import)
melt

levelplot(melt)

melt_amount <- melt$X2007annual_melt - melt$X1979annual_melt #sovrapposizione immagini
clb <- colorRampPalette(c("blue","white","red"))(100)
plot(melt_amount, col=clb)
levelplot(melt_amount, col.regions=clb)
