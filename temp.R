library(DBI)
library(RSQLite)
download.file(url = "https://github.com/PPBDS/primer/blob/master/03-data/data/chinook.db?raw=true",
              destfile = "temp.db", mode = "wb")
con_chinook_data <- dbConnect(RSQLite::SQLite(), "temp.db")
tables <- dbListTables(con_chinook_data)
tables
albums_db <- tbl(can_mov_db_con, "ratings")
