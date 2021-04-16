#utilizzo knitr

install.packages("knitr")
library(knitr)

setwd("C:/lab/") # Windows


#per creare report PDF del codice con grafici
stitch("R_code_Greenland.r", template=system.file("misc", "knitr-template.Rnw", package="knitr"))
stitch("codice.r", template=system.file("misc", "knitr-template.Rnw", package="knitr"))

