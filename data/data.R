big_tech_stock_prices <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-02-07/big_tech_stock_prices.csv')
big_tech_companies <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-02-07/big_tech_companies.csv')

big_tech <- big_tech_stock_prices |> 
  dplyr::left_join(big_tech_companies, by = "stock_symbol")

readr::write_csv(big_tech, "data/big_tech.csv")
