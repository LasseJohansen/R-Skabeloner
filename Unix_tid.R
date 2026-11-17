# Omregn mellem Unix-tid og dato
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
tid <- "TIME" # INDSÆT HER: antal sekunder siden 1970-01-01
data$dato_utc <- as.POSIXct(data[[tid]], origin = "1970-01-01", tz = "UTC")
nu_unix <- as.numeric(Sys.time())
et_doegn_foer <- nu_unix - 86400
