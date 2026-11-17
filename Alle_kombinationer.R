# Beregn alle ikke-tomme spørgsmålsindikatorer
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER: fortegn skal allerede være justeret
spm <- c("F1", "F2", "F3") # INDSÆT HER: rækkefølgen bestemmer X-numrene
kombinationer <- unlist(lapply(seq_along(spm), function(k) {
  combn(spm, k, simplify = FALSE)
}), recursive = FALSE)
indikatorer <- as.data.frame(lapply(kombinationer, function(k) {
  rowMeans(data[, k, drop = FALSE], na.rm = FALSE)
}))
names(indikatorer) <- paste0("X", seq_along(kombinationer))
forklaring <- data.frame(indikator = names(indikatorer),
                         spoergsmaal = vapply(kombinationer, paste, collapse = ", ", FUN.VALUE = ""))
stopifnot(ncol(indikatorer) == 2^length(spm) - 1)
# 11 spørgsmål giver 2047 indikatorer. Tilføj tidskolonnen før join med andre data.
