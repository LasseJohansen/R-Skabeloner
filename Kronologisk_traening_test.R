# Test en model på senere observationer
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
tid <- "DATO" # INDSÆT HER: kronologisk sorterbar kolonne
y <- "Y_KOLONNE" # INDSÆT HER
x <- c("X_KOLONNE") # INDSÆT HER
data <- data[order(data[[tid]]), ]
data <- data[complete.cases(data[, c(tid, y, x), drop = FALSE]), ]
andel <- .8 # INDSÆT HER: andel til træning
split <- floor(nrow(data) * andel)
stopifnot(split > length(x) + 1, split < nrow(data))
traening <- data[seq_len(split), ]
test <- data[seq.int(split + 1, nrow(data)), ]
model <- lm(reformulate(x, response = y), data = traening)
test$forudsagt <- predict(model, newdata = test)
fejl <- test[[y]] - test$forudsagt
data.frame(RMSE = sqrt(mean(fejl^2)), MAE = mean(abs(fejl)))
# Vælg også indikatorer og transformationer kun på træningsdata.
# Udvidelse af forudsigelse/stabilitet fra OLA 2-3 med eksplicit testperiode.
