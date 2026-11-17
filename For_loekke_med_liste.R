# For-løkke med opsamling i liste
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

vaerdier <- c("A", "B", "C") # INDSÆT HER: værdier du vil gennemløbe
resultater <- vector("list", length(vaerdier))
for (i in seq_along(vaerdier)) {
  aktuel <- vaerdier[i]
  resultater[[i]] <- data.frame(id = aktuel, antal_tegn = nchar(aktuel))
  # INDSÆT HER: erstat beregningen med din egen, som returnerer et dataframe.
}
samlet <- do.call(rbind, resultater)
