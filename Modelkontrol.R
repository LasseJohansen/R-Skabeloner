# Kontrollér residualer og modelantagelser
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

model <- DIN_MODEL # INDSÆT HER: lm-model
gammel_par <- par(mfrow = c(2, 2))
plot(model)
par(gammel_par)
# Se efter mønstre i residualerne, forskellig spredning og indflydelsesrige punkter.
# Ved tidsserier: undersøg også autokorrelation og om perioderne er sammenlignelige.
