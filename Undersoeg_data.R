# Undersøg et datasæt
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

data <- DIT_DATASAET # INDSÆT HER: fx mtcars
head(data, 6)
str(data)
summary(data)
dim(data)
names(data)
colSums(is.na(data))
