# Hent metadata og data fra Statistikbanken
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: dkstat
# Kør kun den skabelon/blok, du skal bruge.

library(dkstat)
tabel <- "INDSÆT HER" # INDSÆT HER: tabel-id, fx FORV1
meta <- dst_meta(table = tabel, lang = "da")
print(meta$variables)
print(meta$values)
# Kør først linjerne ovenfor, og kopiér variabelnavne og værdier fra metadata.
filtre <- list(
  VARIABEL_1 = c("INDSÆT HER"), # INDSÆT HER: erstat også VARIABEL_1
  TID = "*"                   # INDSÆT HER: ret til metadataenes præcise navn
)
data <- dst_get_data(table = tabel, query = filtre, lang = "da", parse_dst_tid = FALSE)
head(data)
# Tilføj alle nødvendige dimensioner, fx enhed, sæsonkorrektion og område.
