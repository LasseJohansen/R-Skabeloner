# Gem figur i høj opløsning
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ggplot2
# Kør kun den skabelon/blok, du skal bruge.

library(ggplot2)
figur <- DIN_FIGUR # INDSÆT HER: gemt ggplot-objekt
ggsave("INDSÆT HER.png", plot = figur, width = 12, height = 7, units = "in", dpi = 300)
# INDSÆT HER: filsti, bredde og højde. Brug .pdf ved behov for vektorgrafik.
