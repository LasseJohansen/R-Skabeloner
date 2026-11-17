# Vis punkter på et interaktivt kort
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: leaflet
# Kør kun den skabelon/blok, du skal bruge.

library(leaflet)
data <- DIT_DATASAET # INDSÆT HER
bredde <- "LAT" # INDSÆT HER: breddegrad i WGS84
laengde <- "LON" # INDSÆT HER: længdegrad i WGS84
etiket <- "NAVN" # INDSÆT HER
kort <- leaflet(data) |> addTiles() |>
  addCircleMarkers(lng = data[[laengde]], lat = data[[bredde]],
                   label = as.character(data[[etiket]]), radius = 3)
kort
