library(RKaggle)
library(readr)
library(here)
download_raw_data <- RKaggle::get_dataset("uciml/pima-indians-diabetes-database")
download_raw_data_path <- here::here("data", "raw", "pima-indians-diabetes-database.csv")
dir.create(here::here("data", "raw"), 
           recursive = TRUE,
           showWarnings = FALSE)
readr::write_csv(download_raw_data, download_raw_data_path)