# Indlæs Excel
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: readxl
# Kør kun den skabelon/blok, du skal bruge.

library(readxl)
data <- read_excel(
  path = "INDSÆT HER.xlsx", # INDSÆT HER: filsti
  sheet = 1,               # INDSÆT HER: arkets navn eller nummer
  skip = 0                 # INDSÆT HER: antal linjer før kolonneoverskrifter
)
head(data)
