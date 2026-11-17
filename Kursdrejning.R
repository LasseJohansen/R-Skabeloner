# Beregn drejning på tværs af 0 og 360 grader
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
data <- DIT_DATASAET # INDSÆT HER
id <- "ID" # INDSÆT HER: fx icao24
tid <- "TIME" # INDSÆT HER
kurs <- "KURS" # INDSÆT HER: grader fra 0 til 360
resultat <- data |>
  arrange(.data[[id]], .data[[tid]]) |>
  group_by(across(all_of(id))) |>
  mutate(drejning = ((.data[[kurs]] - lag(.data[[kurs]]) + 180) %% 360) - 180) |>
  summarise(antal_punkter = n(), samlet_drejning = sum(drejning, na.rm = TRUE), .groups = "drop")
# En stor sum er kun en screeningsregel, ikke i sig selv bevis på cirkelflyvning.
# Store tidshuller eller kursændringer over 180 grader mellem punkter kræver særskilt kontrol.
