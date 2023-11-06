
# Preparing data: ---------------------------------------------------------
library(magrittr)
base::options(timeout = 300)
data_path = "https://www.greenbondtransparency.com/support/resources/index-gbtp-data-en-v3.xlsx"
destfile <- "index_gbtp_data_en_v3.xlsx"
# downloading data
curl::curl_download(url = data_path, destfile = destfile)
index_gbtp_data_en_v3 <- readxl::read_excel(path = destfile)

# cleaning data dictionary(index)
gbt_data_dictionary <- index_gbtp_data_en_v3 %>%
  dplyr::select(Sheet,Public,`Ref. No`,Name,`Full name`,Description) %>%
  janitor::clean_names() %>%
  dplyr::mutate(number = ref_no) %>%
  tidyr::separate(col = number,into = c("class","subclass"),sep = "[.]") %>%
  dplyr::mutate(data = dplyr::case_when(
    class == "1" ~ "Bonds",
    class == "2" ~ "Allocations",
    class == "3" ~ "Key Performance Indicators",
    class == "4" ~ "Tranches",
    class == "5" ~ "Projects"
  )) %>%
  dplyr::select(-c(class,subclass,sheet,public)) %>%
  dplyr::relocate(data,.before = ref_no)

# removing the downloaded data("index_gbtp_data_en_v3.xlsx") if it exists
if(base::file.exists(destfile)){base::file.remove(destfile)}
if(base::sum(base::ls() %in% "index_gbtp_data_en_v3") > 0){base::rm(list = "index_gbtp_data_en_v3")}

# Exporting data: ---------------------------------------------------------
# exporting to ins/extdata directory
readr::write_csv(x = gbt_data_dictionary,file = "inst/extdata/gbt_data_dictionary.csv")

# exporting to data directory
usethis::use_data(gbt_data_dictionary, overwrite = TRUE,compress = "xz")

# End: --------------------------------------------------------------------
