# Forudsig med prædiktionsinterval
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

model <- DIN_MODEL # INDSÆT HER: eksisterende lm-model
nye_data <- DINE_NYE_DATA # INDSÆT HER: dataframe med samme X-kolonnenavne som modellen
forudsigelse <- predict(model, newdata = nye_data, interval = "prediction", level = .95)
resultat <- cbind(nye_data, as.data.frame(forudsigelse))
print(resultat)
# fit = forventet værdi; lwr/upr = prædiktionsinterval for en ny observation.
# Nye X-værdier skal være kendte for den periode, du vil forudsige.
