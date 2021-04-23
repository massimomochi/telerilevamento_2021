#classificazione

library(raster)
library(RStoolbox)

setwd("C:/lab/") # Windows

so <- brick("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

# visualize RGB levels
plotRGB(so, 1, 2, 3, stretch="lin")

# Unsupervised classification
soc <- unsuperClass(so, nClasses=3)
cl <- colorRampPalette(c('yellow','red','black'))(100)
plot(soc$map,col=cl)


# Unupervised Classification with 20 classes

soc20 <- unsuperClass(so, nClasses=20)
plot(soc20$map)

# Download an image from:
# https://www.esa.int/ESA_Multimedia/Missions/Solar_Orbiter/(result_type)/images
sun <- brick("Solar_Orbiter_s_first_view_of_the_Sun.png")

 

# Unsupervised classification
sunc <- unsuperClass(sun, nClasses=3)
plot(sunc$map)

# Gran Canyon 

library(raster)
library(RStoolbox)

setwd("C:/lab/") # Windows

dolansprings <- brick("dolansprings_oli_2013088_canyon_lrg.jpg")

plotRGB(dolansprings, 1,2,3, stretch="lin")
plotRGB(dolansprings, 3,2,1, stretch="lin")

plotRGB(dolansprings, 1,2,3, stretch"hist")

dsc <- unsuperClass(dolansprings, nClasses=2)
plot(dsc$map)
cl <- colorRampPalette(c('yellow','red','black'))(100)
plot(dsc3$map,col=cl)
