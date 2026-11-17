# Simulér terningkast
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

set.seed(123) # INDSÆT HER: seed giver samme resultat ved gentagelse
antal_forsoeg <- 10000 # INDSÆT HER
antal_terninger <- 2 # INDSÆT HER
kast <- replicate(antal_forsoeg, sum(sample(1:6, antal_terninger, replace = TRUE)))
fordeling <- prop.table(table(kast))
print(fordeling)
barplot(fordeling, xlab = "Sum", ylab = "Andel", main = "Simulerede terningkast")
