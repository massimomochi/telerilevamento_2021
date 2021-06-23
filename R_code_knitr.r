#R_code_knitr.r

#utilizzo knitr

install.packages("knitr")
library(knitr)

setwd("C:/lab/") # Windows


#per creare report PDF del codice compresi grafici e immagini
stitch("R_code_Greenland.r", template=system.file("misc", "knitr-template.Rnw", package="knitr"))
stitch("codice.r", template=system.file("misc", "knitr-template.Rnw", package="knitr"))

#ho riscontrato errori che non sono riuscito a risolvere come altri della classe
#abbiamo utilizzato overleaf per creare il pdf
