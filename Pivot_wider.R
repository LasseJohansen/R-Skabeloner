# Lang tabel til bred tabel
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: tidyr
# Kør kun den skabelon/blok, du skal bruge.

library(tidyr)
data <- DIT_DATASAET # INDSÆT HER
id <- "TID" # INDSÆT HER: række-id, fx kvartal
navn <- "GRUPPE" # INDSÆT HER: værdier bliver kolonnenavne
vaerdi <- "VALUE" # INDSÆT HER: værdier til cellerne
stopifnot(!anyDuplicated(data[, c(id, navn)]))
bred <- pivot_wider(data, id_cols = all_of(id),
                    names_from = all_of(navn), values_from = all_of(vaerdi))
# Ved dubletter: undersøg årsagen før du evt. bruger values_fn = mean.
