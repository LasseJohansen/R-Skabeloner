# Beregn ændring mellem to perioder
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
tid <- "TID" # INDSÆT HER
vaerdi <- "VALUE" # INDSÆT HER
fra <- "2020K1" # INDSÆT HER
til <- "2026K1" # INDSÆT HER
start <- data[data[[tid]] == fra, vaerdi]
slut <- data[data[[tid]] == til, vaerdi]
stopifnot(length(start) == 1, length(slut) == 1, !is.na(start), start != 0)
resultat <- data.frame(fra = fra, til = til, aendring = slut - start,
                       aendring_pct = 100 * (slut / start - 1))
