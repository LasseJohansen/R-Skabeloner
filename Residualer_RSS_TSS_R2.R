# Residualer, RSS, TSS og R²
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

model <- DIN_MODEL # INDSÆT HER: lm-model med intercept
faktisk <- model.response(model.frame(model))
forudsagt <- model$fitted.values
residual <- model$residuals
RSS <- sum(residual^2)
TSS <- sum((faktisk - mean(faktisk))^2)
stopifnot(TSS > 0)
resultat <- data.frame(faktisk, forudsagt, residual)
noegletal <- data.frame(RSS, TSS, R2 = 1 - RSS / TSS,
                        justeret_R2 = summary(model)$adj.r.squared)
print(noegletal)
# Dette beskriver historisk tilpasning på modellens egne træningsdata.
