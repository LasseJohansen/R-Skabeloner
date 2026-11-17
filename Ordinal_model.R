# Ordinal regression og modeltest
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: ordinal
# Kør kun den skabelon/blok, du skal bruge.

library(ordinal)
data <- DIT_DATASAET # INDSÆT HER
y <- "ORDINAL_KOLONNE" # INDSÆT HER
x <- c("X_1", "X_2") # INDSÆT HER
raekkefoelge <- c("Lav", "Mellem", "Høj") # INDSÆT HER: fra laveste til højeste kategori
data[[y]] <- ordered(data[[y]], levels = raekkefoelge)
model <- clm(reformulate(x, response = y), data = data)
summary(model)
nominal_test(model)
scale_test(model)
confint(model)
# Kontrollér at dine kategorier matcher levels, ellers bliver de til NA.
