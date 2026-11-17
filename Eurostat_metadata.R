# Find Eurostat-tabeller og metadata
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: eurostat, restatapi, dplyr, stringr
# Kør kun den skabelon/blok, du skal bruge.

library(eurostat)
library(restatapi)
library(dplyr)
library(stringr)
soegeord <- "INDSÆT HER" # INDSÆT HER: emne på engelsk, fx gas
oversigt <- get_eurostat_toc()
fund <- oversigt |> filter(str_detect(title, regex(soegeord, ignore_case = TRUE)))
print(fund)
tabel <- "INDSÆT HER" # INDSÆT HER: code fra oversigten
metadata <- get_eurostat_dsd(tabel)
print(metadata)
