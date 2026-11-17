# Punktdiagram med regressionslinje
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ggplot2
# Kør kun den skabelon/blok, du skal bruge.

library(ggplot2)
data <- DIT_DATASAET # INDSÆT HER
x <- "X_KOLONNE" # INDSÆT HER
y <- "Y_KOLONNE" # INDSÆT HER
figur <- ggplot(data, aes(x = .data[[x]], y = .data[[y]])) +
  geom_point(alpha = .6) + geom_smooth(method = "lm", se = TRUE) +
  labs(title = "INDSÆT HER: titel", x = x, y = y) + theme_minimal()
print(figur)
