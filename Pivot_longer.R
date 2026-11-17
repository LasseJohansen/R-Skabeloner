# Bred tabel til lang tabel
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: tidyr
# Kør kun den skabelon/blok, du skal bruge.

library(tidyr)
data <- DIT_DATASAET # INDSÆT HER
kolonner <- c("SERIE_1", "SERIE_2") # INDSÆT HER
lang <- pivot_longer(data, cols = all_of(kolonner),
                     names_to = "serie", values_to = "vaerdi")
