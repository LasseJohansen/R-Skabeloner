# Linjegraf for flere grupper
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ggplot2
# Kør kun den skabelon/blok, du skal bruge.

library(ggplot2)
data <- DIT_DATASAET # INDSÆT HER: lang tabel
tid <- "DATO" # INDSÆT HER: Date eller kronologisk sorteret variabel
vaerdi <- "VALUE" # INDSÆT HER
gruppe <- "GRUPPE" # INDSÆT HER
figur <- ggplot(data, aes(x = .data[[tid]], y = .data[[vaerdi]],
                          colour = .data[[gruppe]], group = .data[[gruppe]])) +
  geom_line() + labs(title = "INDSÆT HER: titel", x = tid, y = vaerdi, colour = gruppe) +
  theme_minimal()
print(figur)
