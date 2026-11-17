# Find de hyppigste ord
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: stringr
# Kør kun den skabelon/blok, du skal bruge.

library(stringr)
tekst <- DIN_TEKSTVEKTOR # INDSÆT HER
mindste_laengde <- 4 # INDSÆT HER
antal <- 20 # INDSÆT HER: antal ord i resultatet
moenster <- paste0("\\b\\p{L}{", mindste_laengde, ",}\\b")
ord <- unlist(str_extract_all(str_to_lower(tekst), moenster))
ord <- ord[!is.na(ord)]
hyppighed <- head(sort(table(ord), decreasing = TRUE), antal)
print(hyppighed)
