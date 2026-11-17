# Find de største observationer
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
data <- DIT_DATASAET # INDSÆT HER
kolonne <- "DIN_KOLONNE" # INDSÆT HER
antal <- 5 # INDSÆT HER
top <- data |> slice_max(order_by = .data[[kolonne]], n = antal, with_ties = FALSE)
