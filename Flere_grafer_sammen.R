# Saml flere grafer
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: gridExtra
# Kør kun den skabelon/blok, du skal bruge.

library(gridExtra)
figur_1 <- DIN_FIGUR_1 # INDSÆT HER
figur_2 <- DIN_FIGUR_2 # INDSÆT HER
samlet <- arrangeGrob(figur_1, figur_2, ncol = 1)
grid::grid.newpage()
grid::grid.draw(samlet)
# ggplot2::ggsave("samlet.png", samlet, width = 12, height = 10, dpi = 300)
