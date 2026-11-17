# Gennemsnit af retninger i grader
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: Ingen (base R)
# Kør kun den skabelon/blok, du skal bruge.

retninger <- DINE_RETNINGER # INDSÆT HER: numerisk vektor i grader
retninger <- retninger[is.finite(retninger)]
stopifnot(length(retninger) > 0)
radianer <- retninger * pi / 180
s <- mean(sin(radianer))
c <- mean(cos(radianer))
styrke <- sqrt(s^2 + c^2)
retning <- if (styrke < 1e-8) NA_real_ else (atan2(s, c) * 180 / pi) %% 360
data.frame(gennemsnitsretning = retning, koncentration = styrke)
# 359 og 1 grader giver ca. 0 grader. Svag koncentration giver et usikkert gennemsnit.
