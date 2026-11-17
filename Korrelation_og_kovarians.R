# Korrelation og kovarians
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
kolonner <- c("X", "Y") # INDSÆT HER: mindst to numeriske kolonner
tal <- data[, kolonner, drop = FALSE]
tal <- tal[complete.cases(tal), , drop = FALSE]
korrelation <- cor(tal)
kovarians <- cov(tal)
print(round(korrelation, 3))
# Korrelation viser sammenhæng; den dokumenterer ikke årsag og virkning.
