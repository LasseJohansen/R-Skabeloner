# Kør én regression for hver X-variabel
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
y <- "Y_KOLONNE" # INDSÆT HER
x <- c("X_1", "X_2", "X_3") # INDSÆT HER
faelles <- data[complete.cases(data[, c(y, x), drop = FALSE]), , drop = FALSE]
modeller <- setNames(lapply(x, function(kolonne) {
  lm(reformulate(kolonne, response = y), data = faelles)
}), x)
rangliste <- do.call(rbind, lapply(names(modeller), function(navn) {
  s <- summary(modeller[[navn]])
  data.frame(variabel = navn, R2 = s$r.squared, n = nobs(modeller[[navn]]))
}))
rangliste <- rangliste[order(rangliste$R2, decreasing = TRUE), ]
print(rangliste)
# Samme observationer anvendes til alle modeller. Højeste historiske R² er
# ikke dokumentation for den bedste fremtidige prognose.
