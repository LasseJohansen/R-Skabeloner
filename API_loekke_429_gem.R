# Stop ved 429 og gem de indsamlede resultater
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: httr, jsonlite
# Kør kun den skabelon/blok, du skal bruge.

library(httr)
library(jsonlite)
urls <- DINE_URLS # INDSÆT HER: vektor med komplette API-URL'er
resultater <- list()
for (i in seq_along(urls)) {
  svar <- GET(urls[i], timeout(30))
  if (status_code(svar) == 429) {
    message("API-grænse nået; stopper og gemmer.")
    break
  }
  if (http_error(svar)) {
    warning(paste("Springer kald over:", i, "status", status_code(svar)))
    next
  }
  resultater[[as.character(i)]] <- fromJSON(content(svar, as = "text", encoding = "UTF-8"))
  Sys.sleep(1) # INDSÆT HER: ventetid tilpasset API'ets grænser
}
saveRDS(resultater, "INDSÆT HER.rds") # INDSÆT HER: filsti
# Listen beholder hvert svar separat, så forskellige JSON-strukturer ikke blandes.
