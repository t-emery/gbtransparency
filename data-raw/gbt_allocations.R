
# Preparing data: ---------------------------------------------------------
library(magrittr)
data_path = "https://gbtp-logs.s3.amazonaws.com/dumps/allocations.csv"
gbt_allocations <- readr::read_csv(file = data_path) %>%
  janitor::clean_names()

# Exporting data: ---------------------------------------------------------
# exporting to ins/extdata directory
readr::write_csv(x = gbt_allocations,file = "inst/extdata/gbt_allocations.csv")

# exporting to data directory
usethis::use_data(gbt_allocations, overwrite = TRUE,compress = "xz")

# End: --------------------------------------------------------------------
