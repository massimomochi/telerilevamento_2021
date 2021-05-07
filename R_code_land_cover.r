#R_code_land_cover.r

setwd("C:/lab/") # Windows
library(raster)
library(RStoolbox)
install.packages("ggplot2")
library(ggplot2)
install.packages("gridExtra")
library(gridExtra)

defor1 <- brick("defor1.jpg")
plotRGB(defor1, r=1, g=2, b=3, stretch="lin")
ggRGB(defor1, r=1, g=2, b=3, stretch="lin")

defor2 <- brick("defor2.jpg")
plotRGB(defor2, r=1, g=2, b=3, stretch="lin")
ggRGB(defor2, r=1, g=2, b=3, stretch="lin")

par(mfrow=c(1,2))
plotRGB(defor1, r=1, g=2, b=3, stretch="lin")
plotRGB(defor2, r=1, g=2, b=3, stretch="lin")

# multiframe with ggplot2 and gridExtra

p1 <- ggRGB(defor1, r=1, g=2, b=3, stretch="lin")
p2 <- ggRGB(defor2, r=1, g=2, b=3, stretch="lin")
grid.arrange(p1, p2, nrow=2)

# unsupervised classification

d1c <- unsuperClass(defor1, nClasses=2)
plot(d1c$map)

d2c <- unsuperClass(defor2, nClasses=2)
plot(d2c$map)

d2c3 <- unsuperClass(defor2, nClasses=3)
plot(d2c3$map)

# set.seed() would allow you to attain the same results

freq(d1c$map)
#    value  count
# [1,]     1  32410
# [2,]     2 308882

s1 <- 32410+308882

prop1 <- freq(d1c$map)/s1
# prop forest : 0.90503733
# prop agricolture: 0.09496267

s2 <- 342726
prop2 <- freq(d2c$map) / s2
#prop forest: 0.518843
#prop agricolture: 0.481157

# build a dataframe
cover <- c("Forest","Agriculture")
percent_1992 <- c(89.83, 10.16)
percent_2006 <- c(52.06, 47.93)

 
percentages <- data.frame(cover, percent_1992, percent_2006)
percentages

#let's plot them!

p1 <- ggplot(percentages, aes(x=cover, y=percent_1992, color=cover)) + geom_bar(stat="identity", fill="white")
p2 <- ggplot(percentages, aes(x=cover, y=percent_2006, color=cover)) + geom_bar(stat="identity", fill="white")

 grid.arrange(p1, p2, nrow=1)

















