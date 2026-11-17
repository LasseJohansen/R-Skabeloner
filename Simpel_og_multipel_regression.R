# Simpel og multipel lineær regression
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
y <- "Y_KOLONNE" # INDSÆT HER: numerisk målvariabel
x <- c("X_KOLONNE_1", "X_KOLONNE_2") # INDSÆT HER: brug ét navn ved simpel regression
data_model <- data[complete.cases(data[, c(y, x), drop = FALSE]), , drop = FALSE]
model <- lm(reformulate(x, response = y), data = data_model)
summary(model)
confint(model)
# Koefficienterne i en multipel model gælder, når de øvrige variable holdes konstante.
