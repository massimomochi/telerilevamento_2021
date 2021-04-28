# R_code_multivariate_analysis.r

library(raster)
library(RStoolbox)

setwd("C:/lab/") # Windows

p224r63_2011 <- brick("p224r63_2011_masked.grd")

plot(p224r63_2011)

p224r63_2011


plot(p224r63_2011$B1_sre, p224r63_2011$B1_sre, col="red", pch=19, cex=2)
plot(p224r63_2011$B1_sre, p224r63_2011$B2_sre, col="red", pch=19, cex=2)


pairs(p224r63_2011)

# aggregate cells: resampling (ricampionamento)

p224r63_2011_res <- aggregate(p224r63_2011, fact=10, fun=mean)

par(mfrow=c(2,1))
plotRGB(p224r63_2011, r=4, g=3, B=2, stretch="lin")
plotRGB(p224r63_2011_res, r=4, g=3, B=2, stretch="lin")

#rasterPCA

p224r63_2011_pca <- rasterPCA(p224r63_2011_res)

summary(p224r63_2011_pca$model)

plot(p224r63_2011_pca$map)

plotRGB(p224r63_2011_pca$map, r=1, g=2, b=3, stretch="lin")

