# PCA og komponenternes loadings
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
kolonner <- c("X_1", "X_2", "X_3") # INDSÆT HER: numeriske forklarende variable
tal <- na.omit(data[, kolonner, drop = FALSE])
stopifnot(all(vapply(tal, sd, numeric(1)) > 0))
pca <- prcomp(tal, center = TRUE, scale. = TRUE)
summary(pca)
loadings <- data.frame(variabel = rownames(pca$rotation),
                       loading = pca$rotation[, 1],
                       vaegt_pct = 100 * pca$rotation[, 1]^2)
loadings <- loadings[order(loadings$vaegt_pct, decreasing = TRUE), ]
# Kvadrerede loadings beskriver komponenten, ikke en kausal effekt på en Y-variabel.
