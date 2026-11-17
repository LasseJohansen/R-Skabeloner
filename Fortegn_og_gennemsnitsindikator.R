# Vend fortegn og beregn indikator
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER: én række pr. periode
vend <- c("F6", "F8") # INDSÆT HER: spørgsmål hvis fortegn skal vendes
spm <- c("F1", "F2", "F6", "F8") # INDSÆT HER: spørgsmål i indikatoren
justeret <- data # Start altid fra originale værdier, så fortegn ikke vendes to gange.
justeret[vend] <- lapply(justeret[vend], function(x) -x)
justeret$indikator <- rowMeans(justeret[, spm, drop = FALSE], na.rm = FALSE)
# Vend fortegn FØR gennemsnittet. NA bevares, hvis et spørgsmål mangler.
# Et X-nummer afhænger af spørgsmålsrækkefølgen; denne fil genskaber ikke X1450 automatisk.
