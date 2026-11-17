# Beregn deskriptiv statistik
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
kolonne <- "DIN_KOLONNE" # INDSÆT HER
x <- data[[kolonne]]
x <- x[is.finite(x)]
stopifnot(length(x) > 0)
statistik <- data.frame(
  antal = length(x), gennemsnit = mean(x), median = median(x),
  standardafvigelse = sd(x), minimum = min(x), maksimum = max(x),
  kvartil_1 = unname(quantile(x, .25)), kvartil_3 = unname(quantile(x, .75))
)
print(statistik)
