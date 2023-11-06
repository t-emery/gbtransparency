
# Preparing data: ---------------------------------------------------------
library(magrittr)
data_path = "https://gbtp-logs.s3.amazonaws.com/dumps/bonds.csv"
gbt_bonds <- readr::read_csv(file = data_path) %>%
  janitor::clean_names()

# Exporting data: ---------------------------------------------------------
# exporting to ins/extdata directory
readr::write_csv(x = gbt_bonds,file = "inst/extdata/gbt_bonds.csv")

# exporting to data directory
usethis::use_data(gbt_bonds, overwrite = TRUE,compress = "xz")

# End: --------------------------------------------------------------------
