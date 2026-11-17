# Hent HTML efter JavaScript-indlæsning
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: chromote, rvest, jsonlite
# Kør kun den skabelon/blok, du skal bruge.

library(chromote)
library(rvest)
hent_side <- function(url, selector, timeout = 20) {
  browser <- ChromoteSession$new()
  on.exit(browser$close(), add = TRUE)
  browser$Page$navigate(url = url)
  start <- Sys.time()
  repeat {
    js <- paste0("document.querySelector(", jsonlite::toJSON(selector, auto_unbox = TRUE), ") !== null")
    klar <- isTRUE(browser$Runtime$evaluate(js)$result$value)
    if (klar) break
    if (as.numeric(difftime(Sys.time(), start, units = "secs")) > timeout) stop("Element ikke fundet")
    Sys.sleep(.5)
  }
  html <- browser$Runtime$evaluate("document.documentElement.outerHTML")$result$value
  read_html(html)
}
side <- hent_side("INDSÆT HER", "article") # INDSÆT HER: URL og selector
# Kør derefter dine rvest-udtræk på side. Chrome/Chromium skal være installeret.
