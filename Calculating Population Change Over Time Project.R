#Data Chart 

# Year	Population
# 1927	691000
# 1950	983000
# 2000	8831800
# 2017	15029231

calculate_annual_growth <- function(year_one, year_two, pop_y1, pop_y2, city) {
  annual_growth <- (((pop_y2 - pop_y1) / pop_y1) * 100) / (year_two - year_one)
  message <- paste("From", year_one, "to", year_two, "the population of", city,
                   "grew by applroximately", annual_growth, "% each year.")
  print(message)
  return(annual_growth)
} 

# creating variables

city_name <- "Istanbul, Turkey"
pop_year_one <- 691000
pop_year_two <- 15029231

# using variables to perform calculations  
 
pop_change <- pop_year_two - pop_year_one
percentage_gr <- ((pop_change) / pop_year_one * 100)
annual_gr <- percentage_gr / (2017 - 1927)

print(annual_gr)

# calling the function with correct arguments 

year_one <- 1927
year_two <- 2017
pop_y1 <- pop_year_one
pop_y2 <- pop_year_two
city <- city_name

# calculate_annual_growth is a function so we will treat it as one 

calculate_annual_growth(year_one, year_two, pop_y1, pop_y2, city) 
