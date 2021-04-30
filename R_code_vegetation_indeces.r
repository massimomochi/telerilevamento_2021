# R_code_vegetation_indeces

library(raster)

setwd("C:/lab/")

defor1 <- brick("defor1.jpg")
defor2 <- brick("defor2.jpg")

# band1: NIR
# band2: red
# band3: green

par(mfrow=c(2,1))
plotRGB(defor1, r=1, g=2, b=3, stretch="lin")
plotRGB(defor2, r=1, g=2, b=3, stretch="lin")

# difference vagetation index

dvi1 <- defor1$defor1.1-defor1$defor1.2
plot(dvi1)

cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) 
plot(dvi1, col=cl)

#dvi2

dvi2 <- defor2$defor2.1-defor2$defor2.2
plot(dvi2)

cl2 <- colorRampPalette(c('darkblue','yellow','red','black'))(100) 
plot(dvi2, col=cl2)

par(mfrow=c(2,1))
plot(dvi1, col=cl, main="DVI at time 1")
plot(dvi2, col=cl2, main="DVI at time 2")

#calcoliamo la differenza

difdvi <- dvi1 - dvi2

cld <- colorRampPalette(c('blue','white','red'))(100) 
plot(difdvi, col=cld)

#ndvi
# (NIR-RED) / (NIR+RED)
ndvi1 <- (defor1$defor1.1 - defor1$defor1.2) / (defor1$defor1.1 + defor1$defor1.2)
ndvi2 <- (defor2$defor2.1 - defor2$defor2.2) / (defor2$defor2.1 + defor2$defor2.2)

# RStoolbox: SpectralIndices

install.packages("RStoolbox")
library(RStoolbox) # for vegetation indices calculation

vi <- spectralIndeces(defor1, green=3, red=2, nir=1)
plot(vi, col=cl)

vi2 <- spectralIndices(defor2, green = 3, red = 2, nir = 1)
plot(vi2, col=cl)

difndvi <- ndvi1 - ndvi2

cld <- colorRampPalette(c('blue','white','red'))(100) 
plot(difndvi, col=cld)













