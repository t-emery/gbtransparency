
# Preparing data: ---------------------------------------------------------
library(magrittr)
base::options(timeout = 300)
data_path = "https://gbtp-logs.s3.amazonaws.com/dumps/measurements.csv"
gbt_key_performance_indicators <- readr::read_csv(file = data_path) %>%
  janitor::clean_names()

# Exporting data: ---------------------------------------------------------
# exporting to ins/extdata directory
readr::write_csv(x = gbt_key_performance_indicators,
                 file = "inst/extdata/gbt_key_performance_indicators.csv")

# exporting to data directory
usethis::use_data(gbt_key_performance_indicators, overwrite = TRUE,compress = "xz")

# End: --------------------------------------------------------------------
