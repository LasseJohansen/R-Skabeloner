# Sammenlign samme model i flere perioder
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
tid <- "DATO" # INDSÆT HER
y <- "Y_KOLONNE" # INDSÆT HER
x <- "X_KOLONNE" # INDSÆT HER
antal_perioder <- 5 # INDSÆT HER
data <- data[order(data[[tid]]), ]
data <- data[complete.cases(data[, c(tid, y, x), drop = FALSE]), ]
stopifnot(nrow(data) >= antal_perioder * 4)
data$periode <- pmin(antal_perioder, ceiling(seq_len(nrow(data)) * antal_perioder / nrow(data)))
stabilitet <- do.call(rbind, lapply(split(data, data$periode), function(d) {
  m <- lm(reformulate(x, response = y), data = d)
  data.frame(fra = as.character(min(d[[tid]])), til = as.character(max(d[[tid]])),
             n = nrow(d), R2 = summary(m)$r.squared, haeldning = unname(coef(m)[2]))
}))
print(stabilitet)
# Modellen estimeres på ny i hver periode: det er en stabilitetsanalyse af historisk fit.
