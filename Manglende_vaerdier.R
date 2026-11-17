# Fjern manglende værdier i udvalgte kolonner
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
kolonner <- c("KOLONNE_1", "KOLONNE_2") # INDSÆT HER: nødvendige kolonner
data_ren <- data[complete.cases(data[, kolonner, drop = FALSE]), , drop = FALSE]
cat("Fjernede rækker:", nrow(data) - nrow(data_ren), "\n")
