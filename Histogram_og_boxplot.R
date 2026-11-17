# Histogram og boxplot
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ggplot2
# Kør kun den skabelon/blok, du skal bruge.

library(ggplot2)
data <- DIT_DATASAET # INDSÆT HER
vaerdi <- "VALUE" # INDSÆT HER
gruppe <- "GRUPPE" # INDSÆT HER
histogram <- ggplot(data, aes(x = .data[[vaerdi]])) +
  geom_histogram(bins = 30, fill = "steelblue", colour = "white") + theme_minimal()
boks <- ggplot(data, aes(x = factor(.data[[gruppe]]), y = .data[[vaerdi]])) +
  geom_boxplot() + labs(x = gruppe, y = vaerdi) + theme_minimal()
print(histogram)
print(boks)
