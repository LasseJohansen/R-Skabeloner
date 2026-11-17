# Eksportér en tabel til CSV
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER: det dataframe, der skal gemmes
write.csv2(data, "INDSÆT HER.csv", row.names = FALSE, fileEncoding = "UTF-8")
# INDSÆT HER: filsti. csv2 bruger semikolon og decimalkomma.
