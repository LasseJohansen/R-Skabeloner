# Omregn DST-måneder som 2026M01 til dato
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
tid <- "TID" # INDSÆT HER: tekstkolonne med fx 2026M01
tekst <- as.character(data[[tid]])
aar <- as.integer(substr(tekst, 1, 4))
maaned <- as.integer(sub(".*[Mm]", "", tekst))
stopifnot(all(maaned %in% 1:12))
data$dato <- as.Date(sprintf("%04d-%02d-01", aar, maaned))
data$kvartal <- paste0(aar, "K", ceiling(maaned / 3))
