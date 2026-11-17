# Find og fjern dubletter efter nøgle
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER
noegler <- c("ID", "TID") # INDSÆT HER: kolonner, der tilsammen skal være unikke
dubletter <- data[duplicated(data[, noegler, drop = FALSE]) |
                 duplicated(data[, noegler, drop = FALSE], fromLast = TRUE), ]
print(dubletter)
# Behold kun første række pr. nøgle, hvis det er fagligt korrekt:
data_unik <- data[!duplicated(data[, noegler, drop = FALSE]), , drop = FALSE]
