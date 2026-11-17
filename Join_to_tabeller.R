# Sammenkobl to tabeller
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dplyr
# Kør kun den skabelon/blok, du skal bruge.

library(dplyr)
venstre <- DIT_VENSTRE_DATASAET # INDSÆT HER
hoejre <- DIT_HOEJRE_DATASAET # INDSÆT HER
noegle <- "ID" # INDSÆT HER: fælles kolonnenavn
# Flere ens nøgler i højre tabel kan give flere rækker efter join.
stopifnot(!anyDuplicated(hoejre[[noegle]]))
samlet <- left_join(venstre, hoejre, by = noegle)
uden_match <- anti_join(venstre, hoejre, by = noegle)
# Ved forskellige navne: left_join(venstre, hoejre, by = c("by" = "bynavn"))
