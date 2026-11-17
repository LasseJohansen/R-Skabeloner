# Årlig realvækst i kvartalsdata
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr, tidyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
library(tidyr)
data <- DIT_DATASAET # INDSÆT HER: én serie i faste priser
tid <- "KVARTAL" # INDSÆT HER: tekst som 2026K1
vaerdi <- "FORBRUG" # INDSÆT HER
data <- data |> mutate(
  kvartalsnr = as.integer(substr(.data[[tid]], 1, 4)) * 4L +
    as.integer(sub(".*[KkQq]", "", .data[[tid]])) - 1L
)
stopifnot(!anyNA(data$kvartalsnr), !anyDuplicated(data$kvartalsnr))
resultat <- data |> complete(kvartalsnr = full_seq(kvartalsnr, 1)) |>
  arrange(kvartalsnr) |>
  mutate(realvaekst_pct = 100 * (.data[[vaerdi]] / lag(.data[[vaerdi]], 4) - 1))
# lag(..., 4) kræver fire sammenhængende kvartaler. Huller bliver NA.
# Med løbende priser beregnes nominel vækst, ikke realvækst.
