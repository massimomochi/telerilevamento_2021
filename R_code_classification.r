library(raster)

setwd("C:/lab/") # Windows

so <- brick("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

# visualize RGB levels
plotRGB(so, 1, 2, 3, stretch="lin")
