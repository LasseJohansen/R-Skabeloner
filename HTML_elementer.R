# Hent gentagne elementer med CSS-selectors
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: rvest
# Kør kun den skabelon/blok, du skal bruge.

library(rvest)
url <- "INDSÆT HER" # INDSÆT HER
element_selector <- "article" # INDSÆT HER: selector for hvert produkt/element
titel_selector <- "h2" # INDSÆT HER: selector inde i elementet
pris_selector <- ".price" # INDSÆT HER
side <- read_html(url)
elementer <- html_elements(side, element_selector)
data <- data.frame(
  titel = html_text2(html_element(elementer, titel_selector)),
  pris_tekst = html_text2(html_element(elementer, pris_selector))
)
# Udtræk fra hvert fælles element, så titel og pris bliver på samme række.
