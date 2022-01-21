library(tidyquant)
library(dplyr)

prices <- c(
  "MSFT34", "SNEC34", "ATVI34"
) %>%
  paste0(".SA") %>%
  tq_get(get = "stock.prices", from = " 2010-01-01") %>%
  mutate(symbol = sub(".SA", "", symbol))


write.table(prices, "prices.csv", sep = ",", row.names = FALSE)

prices <- read.csv("C:/Users/Framework/Documents/projetos/R/prices.csv") %>%
  mutate(date = as.Date(date))