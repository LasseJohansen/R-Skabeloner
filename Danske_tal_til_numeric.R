# Omregn dansk taltekst til tal
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
kolonner <- c("PRIS", "STOERRELSE") # INDSÆT HER
for (kolonne in kolonner) {
  tekst <- as.character(data[[kolonne]])
  tekst <- gsub("\\.", "", tekst) # Tusindtalsseparator: 1.234,50 -> 1234,50
  tekst <- gsub(",", ".", tekst, fixed = TRUE)
  tekst <- gsub("[^0-9.-]", "", tekst)
  data[[kolonne]] <- as.numeric(tekst)
}
# Brug kun denne metode, når punktum er tusindtalsseparator og komma decimaltegn.
