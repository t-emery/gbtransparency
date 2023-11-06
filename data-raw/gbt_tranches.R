
# Preparing data: ---------------------------------------------------------
library(magrittr)
data_path = "https://gbtp-logs.s3.amazonaws.com/dumps/tranches.csv"
gbt_tranches <- readr::read_csv(file = data_path) %>%
  janitor::clean_names()

# Exporting data: ---------------------------------------------------------
# exporting to ins/extdata directory
readr::write_csv(x = gbt_tranches,file = "inst/extdata/gbt_tranches.csv")

# exporting to data directory
usethis::use_data(gbt_tranches, overwrite = TRUE,compress = "xz")

# End: --------------------------------------------------------------------
