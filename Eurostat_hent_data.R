# Hent filtrerede Eurostat-data
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: restatapi
# Kør kun den skabelon/blok, du skal bruge.

library(restatapi)
tabel <- "INDSÆT HER" # INDSÆT HER: fx namq_10_fcs
filtre <- list(
  geo = c("DK", "SE"), # INDSÆT HER: lande
  na_item = "P31_S14", # INDSÆT HER: indhold fra tabellens metadata
  unit = "CLV20_MNAC", # INDSÆT HER: enhed fra metadata
  s_adj = "SCA"       # INDSÆT HER: sæsonkorrektion fra metadata
)
data <- get_eurostat_data(id = tabel, filters = filtre,
  select_freq = "Q", date_filter = "2000-01-01:2025-12-31", # INDSÆT HER: frekvens og periode
  name = FALSE, stringsAsFactors = FALSE)
head(data)
# Filtrene ovenfor stammer fra forbrugsanalysen; tilpas alle dimensioner til din tabel.
