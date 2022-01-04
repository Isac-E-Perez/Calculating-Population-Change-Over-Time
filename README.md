# Calculating Population Change Over Time Project
### About: 

For this project, I implemented data analysis using R. I used just R to build the project. I analyzed a simple data chart to gain a better understanding and insight of the year and population growth from 1927 to 2017 in Istanbul, Turkey.
 
### Results:

**Original Data**
 
```R
#Data Chart 

# Year	Population
# 1927	691000
# 1950	983000
# 2000	8831800
# 2017	15029231
```
 
First I created the variables called *city_name*, *pop_year_one* and *pop_year_two*.
 
```R
# creating variables

city_name <- "Istanbul, Turkey"
pop_year_one <- 691000
pop_year_two <- 15029231 
```
 
Then I used the variables to perform calculations.

```R
# using variables to perform calculations  
 
pop_change <- pop_year_two - pop_year_one
percentage_gr <- ((pop_change) / pop_year_one * 100)
annual_gr <- percentage_gr / (2017 - 1927)

print(annual_gr)
```
 
Afterwards, I called the function with the correct arguments.

```R
# calling the function with correct arguments 

year_one <- 1927
year_two <- 2017
pop_y1 <- pop_year_one
pop_y2 <- pop_year_two
city <- city_name
```

Finally, I created the function named *calculate_annual_growth* and the variable  *annual_growth* to analyze the data. In addition, I created a message variable to display the calculations. Then print the *message* and return the *annual_growth*.

```R
calculate_annual_growth <- function(year_one, year_two, pop_y1, pop_y2, city) {
  annual_growth <- (((pop_y2 - pop_y1) / pop_y1) * 100) / (year_two - year_one)
  message <- paste("From", year_one, "to", year_two, "the population of", city,
                   "grew by applroximately", annual_growth, "% each year.")
  print(message)
  return(annual_growth)
} 
```

**Uses the function with the calculated data from the variables**

```R 
calculate_annual_growth(year_one, year_two, pop_y1, pop_y2, city) 
```

After analyzing the data, I was able to gleam that from 1927 to 2017 the population of Istanbul, Turkey grew by approximately 23.0555250040199 % each year.
 
