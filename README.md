# 1985-Cars-Comparison-
In this project, we’ll suppose you collect something with a lot of data - cars!  Your car collection is almost complete - it’s just missing one thing. You think about it for a while, then it comes to you - you don’t have a car from 1985! But there are so many cars from 1985 available for you to collect!

Luckily for you, we have a dataset that stores precisely that information. 
This dataset comes from the UCI Machine Learning Repository and is linked here (https://archive.ics.uci.edu/dataset/10/automobile). 
This dataset has been adapted so that the variable names are along the first rows.

As you’ll notice in this project, though, this dataset isn’t ready for analysis yet. You will have to make some changes along the way to clean and tidy up the dataset. Do that, and you’ll have the ability to perform a great analysis!

Loading and Inspecting the Data
1. What good is an analysis if we don’t even have the tools to perform the said analysis? 
Some of the tools you will need for this analysis are the readr and dplyr tidyverse packages.
Load the libraries at the top of the notebook.Rmd file so you can access the functions you will need later on.

2. The last tool we need is the data itself!
The file cars85.csv stores the data that comes from the UCI Machine Learning Repository.
Load the file into a dataframe called cars to get started.
3. It’s always a good idea to inspect the data you load into R. It helps you to know what you are working with. 
Inspect cars with head() and summary(). 
What kind of information do you have? What can you do with this information?
Each row in this dataframe is a single car, and each column stores some characteristic about that car. 
You want to get the best value for your collection, so you want to analyze as much as you can before buying. 
Doing so will help you make your choice easier!

Clean the Data
4. After inspecting the dataframe, you notice something odd about the normalized_losses column. 
This column has a lot of entries that are question marks (?). 
This variable is not worth looking at since we don’t have all the cars’ expected losses.
Let’s remove this column from the dataset. 
Select all columns from cars but normalized_losses. Save your new dataframe to cars.
5. Print the column names of cars. Are they clear and descriptive?
6. You know, symboling doesn’t say anything to you at first glance. 
According to the UCI webpage, the symboling variable represents the car’s risk factor. 
That variable name doesn’t seem to go with the description. 
You should simplify this variable name to have it make more sense.

Update that column name in cars as follows:

symboling -> risk_factor
Print the column names of cars to confirm the names of the columns have changed.

Add a Column
7. Your car collection means a lot to you. 
You want each car to be of value to you. 
What better way to do that than to buy a car with a lot of miles-per-gallon on the highways? 
To determine this, first, suppose only cars exceeding 30 mpg on the highways interest you. 
You seek to measure how different each car’s highway mpg is from your 30 mpg threshold. Create a variable called mpg_threshold with the value 30.
8. Add a new column to cars called mpg_diff_from_threshold. 
This will measure how far each car’s highway mpg is from 30 mpg. View the updated cars dataframe.

Filter and Arrange Rows
9. You’ll add a car to your collection only if it gets more than 30 miles per gallon on the highways. 
Filter the rows of cars to find all the cars where mpg_diff_from_threshold is greater than 0. 
Save this new dataframe to mpg_exceeds_threshold and view it.
10. Which cars have the highest miles per gallon on the highways? 
To find this, arrange the rows of mpg_exceeds_threshold by mpg_diff_from_threshold descending. 
Save this new dataframe as mpg_exceeds_threshold.
11. Now suppose you want your next car to have a large engine. 
Order the rows of cars by engine_size descending. 
Save the new data frame to ordered_by_engine_size. View ordered_by_engine_size.

Specifying the Make of the Car
12. There’s a lot of makes of cars to choose from, but you may prefer one over the others. 
Which make do you prefer the most? 
Create a variable called chosen_make that contains the make you want to check. 
The hint below provides the list of makes to choose from.
13. Filter cars to only include rows where the make column is equal to chosen_make. 
Save the new dataframe to chosen_make_details.
14. Order the rows of chosen_make_details by engine_size descending and save the new dataframe to chosen_make_details. 
View chosen_make_details. How large are the engines in each of the cars from that make that you chose? 
You can change the make stored in chosen_make to check out the engine sizes for other makes.
15. The process of buying a new car can cause a lot of stress - you don’t want to buy a car you won’t like! 
You’ve now seen how performing an analysis can ease some of the stress of making the decision of which car to buy. 
You also get to add a nice new car to your collection! Great work!
