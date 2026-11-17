# Opret nye variable og betingelser
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
data <- DIT_DATASAET # INDSÆT HER
kolonne <- "DIN_KOLONNE" # INDSÆT HER
faktor <- 0.7457 # INDSÆT HER: omregningsfaktor
graense <- 150 # INDSÆT HER
data_ny <- data |> mutate(
  omregnet = .data[[kolonne]] * faktor,
  over_graense = .data[[kolonne]] > graense,
  kategori = case_when(
    is.na(.data[[kolonne]]) ~ NA_character_,
    .data[[kolonne]] > graense ~ "Høj",
    TRUE ~ "Lav"
  )
)
