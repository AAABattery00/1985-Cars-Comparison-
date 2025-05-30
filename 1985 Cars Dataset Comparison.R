---
  title: "1985 Cars"
output: html-notebook
---
  
  # Task 1
  ```{r message=FALSE, warning=FALSE, error=TRUE}
# load libraries
library(readr)
library(dplyr)

```
# Task 2
```{r error=TRUE}
# load data
cars = read_csv('cars85.csv')
```
# Task 3
```{r error=TRUE}
# inspect data
head(cars)
```
# Task 4
```{r error=TRUE}
# select columns
cars = cars %>%
  select(symboling, make, fuel_type, aspiration, num_of_doors, body_style, drive_wheels, engine_location, wheel_base, length, width, height, curb_weight, engine_type, num_of_cylinders, engine_size, fuel_system, bore, stroke, compression_ratio, horsepower, peak_rpm, city_mpg, highway_mpg, price, -normalized_losses)
```
# Task 5
```{r error=TRUE}
# view columns
print(cars)
```
# Task 6
```{r error=TRUE}
# rename column
cars <- cars %>%
  rename(risk_factor = symboling)
print(cars)
```
# Task 7
```{r error=TRUE}
# define threshold
mpg_threshold = 30
```
# Task 8
```{r error=TRUE}
# add column
cars <- cars %>%
  mutate(mpg_diff_from_threshold = highway_mpg - mpg_threshold)
head(cars)
```
# Task 9
```{r error=TRUE}
# filter rows
mpg_exceeds_threshold <- cars %>%
  filter(mpg_diff_from_threshold > 0)
head(mpg_exceeds_threshold)
```
# Task 10
```{r error=TRUE}
# arrange rows
mpg_exceeds_threshold <- cars %>%
  filter(mpg_diff_from_threshold > 0) %>%
  arrange(desc(mpg_diff_from_threshold))
head(mpg_exceeds_threshold)
```
# Task 11
```{r error=TRUE}
# order rows by engine size
ordered_by_engine_size <- cars %>%
  arrange(desc(engine_size))
head(ordered_by_engine_size)
```
# Task 12
```{r error=TRUE}
# choose make
chosen_make = 'alfa-romero'
```
# Task 13
```{r error=TRUE}
# filter rows by make
chosen_make_details <- cars %>%
  filter(make == chosen_make)
head(chosen_make_details)
```
# Task 14
```{r error=TRUE}
# order filtered rows by engine size
chosen_make_details %>%
  arrange(desc(engine_size))
head(chosen_make_details)  
```