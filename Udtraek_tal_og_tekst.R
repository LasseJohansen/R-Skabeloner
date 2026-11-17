# Udtræk tal og tekst med regex
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: stringr
# Kør kun den skabelon/blok, du skal bruge.

library(stringr)
tekst <- DIN_TEKSTVEKTOR # INDSÆT HER: fx data$beskrivelse
moenster <- "\\b\\d{4}\\b" # INDSÆT HER: mønster, her firecifrede tal
foerste_match <- str_extract(tekst, moenster)
alle_match <- str_extract_all(tekst, moenster)
har_match <- str_detect(tekst, moenster)
# Eksempler: "\\d+" = tal; "\\p{L}+" = bogstaver inkl. æøå;
# "^[A-Z]+" = store bogstaver i starten. Backslash skrives dobbelt i R-strenge.
