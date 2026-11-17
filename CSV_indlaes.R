# Indlæs CSV
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

fil <- "INDSÆT HER.csv" # INDSÆT HER: filsti eller URL
data <- read.csv(fil, sep = ";", dec = ",", fileEncoding = "UTF-8")
# INDSÆT HER: ret sep, dec og encoding til filen. Fx sep="," og dec=".".
# Tilføj skip = 1, hvis første linje skal springes over.
head(data)
