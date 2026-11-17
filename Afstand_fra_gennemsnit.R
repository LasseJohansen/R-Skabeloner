# Afstand, relativ afstand og standardisering
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
kolonne <- "DIN_KOLONNE" # INDSÆT HER
x <- data[[kolonne]]
gns <- mean(x, na.rm = TRUE)
spredning <- sd(x, na.rm = TRUE)
stopifnot(is.finite(gns), gns != 0, is.finite(spredning), spredning > 0)
data$afstand <- x - gns
data$relativ_afstand_pct <- 100 * (x - gns) / gns
data$z_score <- (x - gns) / spredning
