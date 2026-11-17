# Rens tekst før sammenkobling
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr, stringr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
library(stringr)
data <- DIT_DATASAET # INDSÆT HER
kolonne <- "BY" # INDSÆT HER: tekstkolonne
data <- data |> mutate(
  noegle = str_to_lower(str_squish(.data[[kolonne]])),
  noegle = str_remove(noegle, "^[0-9]+[ -]*"),
  noegle = str_remove(noegle, "\\s*\\(.*$")
)
# Gennemgå unique(data$noegle). Tilpas mønstrene til dine data.
