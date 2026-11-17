# Regression med principal components
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: pls
# Kør kun den skabelon/blok, du skal bruge.

library(pls)
data <- DIT_DATASAET # INDSÆT HER
y <- "Y_KOLONNE" # INDSÆT HER
x <- c("X_1", "X_2", "X_3") # INDSÆT HER
antal_komponenter <- 1 # INDSÆT HER: vælg ud fra faglig vurdering/validering
tal <- na.omit(data[, c(y, x), drop = FALSE])
model_pcr <- pcr(reformulate(x, response = y), data = tal,
                 scale = TRUE, ncomp = antal_komponenter, validation = "none")
summary(model_pcr)
nye_data <- DINE_NYE_DATA # INDSÆT HER: samme X-kolonner
forudsigelse <- predict(model_pcr, newdata = nye_data, ncomp = antal_komponenter)
# Ved tidsserier: valider kronologisk; tilfældig CV kan lække fremtidsinformation.
