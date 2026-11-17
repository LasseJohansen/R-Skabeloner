# Hent JSON fra en API
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: httr, jsonlite
# Kør kun den skabelon/blok, du skal bruge.

library(httr)
library(jsonlite)
url <- "INDSÆT HER" # INDSÆT HER: API-endpoint
parametre <- list(limit = 100) # INDSÆT HER: API'ets parametre, eller list()
svar <- GET(url, query = parametre, timeout(30))
if (status_code(svar) == 429) stop("API-grænse nået. Gem indsamlede data og prøv senere.")
stop_for_status(svar)
json <- fromJSON(content(svar, as = "text", encoding = "UTF-8"), flatten = TRUE)
str(json)
# INDSÆT HER: vælg det relevante datafelt, fx data <- json$features.
