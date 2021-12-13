
install.packages("devtools")
library(devtools)

devtools::install_github(c("leeper/tabulizerjars", "leeper/tabulizer"), INSTALL_opts = "--no-multiarch", dependencies = c("Depends", "Imports"))
devtools::install_github(c("ropensci/tabulizer"),args= "--no-multiarch")




library(tidyverse)
library(tabulizer)

tabugti_table <- extract_tables(
  "http://visionofhumanity.org/app/uploads/2017/11/Global-Terrorism-Index-2017.pdf",
  output = "data.frame",
  pages = c(106, 106, 107, 107), # include pages twice to extract two tables per page
  area = list(
    c(182, 38, 787, 287),
    c(182, 298, 787, 543),
    c(78, 48, 781, 298),
    c(78, 308, 643, 558)
  ),
  guess = FALSE
)

gti_table_clean <- reduce(gti_table, bind_rows) %>% # bind elements of list to 1 df
  as_tibble() %>%
  filter(!(X %in% c("GTI RANK", ""))) %>% # remove rownames and empty rows
  rename(
    gti_rank = X,
    county = X.1,
    gti_score = X.2,
    change_score = CHANGE.IN
  ) %>%
  mutate_at(vars(gti_rank, gti_score, change_score), as.numeric) %>% # convert to numeric 
  print()



