# Søjlediagram med eksisterende værdier
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ggplot2
# Kør kun den skabelon/blok, du skal bruge.

library(ggplot2)
data <- DIT_DATASAET # INDSÆT HER: én række pr. kategori
kategori <- "KATEGORI" # INDSÆT HER
vaerdi <- "VALUE" # INDSÆT HER
figur <- ggplot(data, aes(x = .data[[kategori]], y = .data[[vaerdi]])) +
  geom_col(fill = "steelblue") + coord_flip() +
  labs(title = "INDSÆT HER: titel", x = kategori, y = vaerdi) + theme_minimal()
print(figur)
