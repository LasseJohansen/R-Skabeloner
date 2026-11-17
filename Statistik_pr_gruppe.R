# Statistik for hver gruppe
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
data <- DIT_DATASAET # INDSÆT HER
gruppe <- "GRUPPE" # INDSÆT HER
kolonne <- "DIN_TALKOLONNE" # INDSÆT HER
resultat <- data |>
  group_by(across(all_of(gruppe))) |>
  summarise(antal = n(), antal_gyldige = sum(!is.na(.data[[kolonne]])),
            gennemsnit = mean(.data[[kolonne]], na.rm = TRUE),
            spredning = sd(.data[[kolonne]], na.rm = TRUE), .groups = "drop") |>
  arrange(desc(gennemsnit))
