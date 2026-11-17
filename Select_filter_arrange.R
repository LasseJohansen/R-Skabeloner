# Udvælg, filtrér og sortér
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
data <- DIT_DATASAET # INDSÆT HER
x <- "TAL_KOLONNE" # INDSÆT HER
gruppe <- "GRUPPE_KOLONNE" # INDSÆT HER
graense <- 100 # INDSÆT HER
grupper <- c("GRUPPE_A", "GRUPPE_B") # INDSÆT HER
resultat <- data |>
  filter(.data[[x]] > graense, .data[[gruppe]] %in% grupper) |>
  select(all_of(c(gruppe, x))) |>
  arrange(desc(.data[[x]]))
# Komma eller & betyder OG. Brug | ved ELLER.
