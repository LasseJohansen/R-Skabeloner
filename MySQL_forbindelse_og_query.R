# Forbind til MySQL og hent filtrerede data
# Brug: Kopiér blokken ind i din kode og ret alle INDSÆT HER-felter.
# Pakker: DBI, RMariaDB
# Kør kun den skabelon/blok, du skal bruge.

library(DBI)
library(RMariaDB)
hent_data <- function(kontinent) {
  con <- dbConnect(MariaDB(),
    host = Sys.getenv("DB_HOST", "127.0.0.1"),
    port = 3306, # INDSÆT HER: port
    username = Sys.getenv("DB_USER"), password = Sys.getenv("DB_PASSWORD"),
    dbname = "INDSÆT HER") # INDSÆT HER: database
  on.exit(dbDisconnect(con), add = TRUE)
  query <- paste0(
    "SELECT c.Name, c.Population, ctr.Name AS landenavn ",
    "FROM City c JOIN Country ctr ON ctr.Code = c.CountryCode ",
    "WHERE ctr.Continent = ", dbQuoteString(con, kontinent), " ORDER BY ctr.Name"
  ) # INDSÆT HER: tabeller/kolonner. Eksemplet bruger world-databasens struktur.
  dbGetQuery(con, query)
}
data <- hent_data("Europe") # INDSÆT HER: filterværdi
# Opret DB_USER og DB_PASSWORD lokalt som miljøvariable. Del ingen adgangskoder.
