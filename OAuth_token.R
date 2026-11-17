# Hent OAuth-token uden adgangsoplysninger i kode
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: httr
# Kør kun den skabelon/blok, du skal bruge.

library(httr)
token_url <- "INDSÆT HER" # INDSÆT HER: token-endpoint fra din API
client_id <- Sys.getenv("API_CLIENT_ID") # INDSÆT HER: miljøvariablens navn
client_secret <- Sys.getenv("API_CLIENT_SECRET") # INDSÆT HER: miljøvariablens navn
stopifnot(nzchar(client_id), nzchar(client_secret))
svar <- POST(token_url, encode = "form", timeout(30), body = list(
  grant_type = "client_credentials", client_id = client_id, client_secret = client_secret
))
stop_for_status(svar)
token <- content(svar, as = "parsed", type = "application/json")$access_token
stopifnot(is.character(token), length(token) == 1, nzchar(token))
# Brug add_headers(Authorization = paste("Bearer", token)) i dit GET-kald.
# Gem dine egne værdier lokalt i .Renviron og genstart R. Del aldrig den fil.
