#utilizzo knitr

install.packages("knitr")
library(knitr)

setwd("C:/lab/") # Windows

stitch("~/Downloads/R_code_temp.r", template=system.file("misc", "knitr-template.Rnw", package="knitr"))


