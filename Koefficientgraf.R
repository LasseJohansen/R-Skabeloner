# Vis modellens koefficienter
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ggplot2
# Kør kun den skabelon/blok, du skal bruge.

library(ggplot2)
model <- DIN_MODEL # INDSÆT HER: lm-model
koef <- as.data.frame(summary(model)$coefficients)
koef$variabel <- rownames(koef)
koef <- koef[koef$variabel != "(Intercept)", ]
figur <- ggplot(koef, aes(x = variabel, y = Estimate)) +
  geom_col(fill = "steelblue") + geom_hline(yintercept = 0) +
  coord_flip() + labs(x = NULL, y = "Koefficient", title = "INDSÆT HER: titel") +
  theme_minimal()
print(figur)
# Koefficienters størrelse afhænger af variablernes enheder.
