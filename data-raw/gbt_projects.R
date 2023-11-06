
# Preparing data: ---------------------------------------------------------
library(magrittr)
data_path = "https://gbtp-logs.s3.amazonaws.com/dumps/projects.csv"
gbt_projects <- readr::read_csv(file = data_path) %>%
  janitor::clean_names()

# Exporting data: ---------------------------------------------------------
# exporting to ins/extdata directory
readr::write_csv(x = gbt_projects,file = "inst/extdata/gbt_projects.csv")

# exporting to data directory
usethis::use_data(gbt_projects, overwrite = TRUE,compress = "xz")

# End: --------------------------------------------------------------------
