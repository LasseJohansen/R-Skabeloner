# Gem og indlæs RDS
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER: dit eksisterende dataframe
saveRDS(data, "INDSÆT HER.rds") # INDSÆT HER: ønsket filsti
data_indlaest <- readRDS("INDSÆT HER.rds") # INDSÆT HER: samme filsti
