# Træk tilfældige værdier med vægte
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

set.seed(123)
muligheder <- c("A", "B", "C") # INDSÆT HER
vaegte <- c(.2, .5, .3) # INDSÆT HER: samme længde, ikke-negative vægte
antal <- 1000 # INDSÆT HER
stopifnot(length(muligheder) == length(vaegte), all(vaegte >= 0), sum(vaegte) > 0)
traek <- sample(muligheder, size = antal, replace = TRUE, prob = vaegte)
prop.table(table(traek))
