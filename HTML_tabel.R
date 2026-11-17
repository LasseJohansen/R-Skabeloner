# Hent en HTML-tabel
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: rvest
# Kør kun den skabelon/blok, du skal bruge.

library(rvest)
url <- "INDSÆT HER" # INDSÆT HER: URL til side med en HTML-tabel
nummer <- 1 # INDSÆT HER: tabelnummer på siden
side <- read_html(url)
tabeller <- side |> html_elements("table") |> html_table()
stopifnot(length(tabeller) >= nummer)
data <- tabeller[[nummer]]
# Virker for tabeller i den hentede HTML. JavaScript-sider kræver evt. Chromote.
