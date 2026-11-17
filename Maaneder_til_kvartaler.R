# Omregn måneder til kvartalsgennemsnit
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr, lubridate
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
library(lubridate)
data <- DIT_DATASAET # INDSÆT HER
dato <- "DATO" # INDSÆT HER: Date-kolonne eller tekst som 2026-01-01
vaerdi <- "VALUE" # INDSÆT HER: numerisk kolonne
maaned <- data |> mutate(dato_intern = as.Date(.data[[dato]]),
                         maaned_intern = floor_date(dato_intern, "month"))
stopifnot(!anyNA(maaned$dato_intern), !anyDuplicated(maaned$maaned_intern))
kvartal <- maaned |>
  mutate(kvartal = floor_date(dato_intern, "quarter")) |>
  group_by(kvartal) |>
  summarise(antal_maaneder = n_distinct(maaned_intern[!is.na(.data[[vaerdi]])]),
            gennemsnit = mean(.data[[vaerdi]], na.rm = TRUE), .groups = "drop")
# Ufuldstændige kvartaler bevares og markeres. Brug filter(antal_maaneder == 3)
# hvis analysen kun må indeholde komplette kvartaler.
