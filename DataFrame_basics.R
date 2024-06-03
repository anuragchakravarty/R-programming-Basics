#Numeric vector (1st vector-> Serial number)
numeric_vector_1 <- c(1:30)

# Create character Vector (2nd vector-> Vegetable name)
character_vector_2 <- c("carrot", "potato", "tomato", "cucumber", "lettuce",
                        "broccoli", "spinach", "onion", "garlic", "bell pepper",
                        "zucchini", "celery", "radish", "cauliflower", "green bean",
                        "sweet potato", "asparagus", "kale", "eggplant", "peas",
                        "brussels sprouts", "corn", "beet", "mushroom", "pumpkin",
                        "squash", "artichoke", "leek", "turnip", "rutabaga")

# Create character Vector (3rd vector-> Country name)
country_vector <- c("USA", "Canada", "Mexico", "Brazil", "Argentina",
                    "UK", "France", "Germany", "Italy", "Spain",
                    "China", "Japan", "India", "Australia", "South Korea",
                    "Russia", "South Africa", "Egypt", "Nigeria", "Kenya",
                    "Saudi Arabia", "United Arab Emirates", "Turkey", "Iran", "Iraq",
                    "Pakistan", "Afghanistan", "Indonesia", "Thailand", "Vietnam")

#Create numeric vector (4th vector-> units sold )
units_sold <- c(1000, 1200, 800, 1500, 700,
                900, 1100, 1300, 600, 1400,
                2000, 1800, 1700, 1300, 1600,
                1900, 500, 300, 400, 600,
                800, 900, 1100, 700, 800,
                1000, 1200, 1300, 1400, 1100)
#Create numeric vector (5th vector-> price per unit)
price_per_unit <- c(2.5, 1.8, 3.0, 2.2, 2.4,
                    1.5, 2.0, 2.8, 1.2, 2.6,
                    3.5, 2.0, 1.8, 3.2, 2.3,
                    1.9, 2.1, 2.7, 2.4, 1.6,
                    1.7, 2.9, 3.1, 2.5, 2.3,
                    1.5, 2.2, 2.8, 2.1, 1.8)

# Combine the vectors into a dataframe
df <- data.frame(
  Serial_Number = numeric_vector_1,
  Vegetable = character_vector_2,
  Country = country_vector,
  Units_Sold = units_sold,
  Price_Per_Unit = price_per_unit
)

# View the dataframe
print(df)
View(df)

#Creating and insering a new vector in data frame
total_sales <- units_sold * price_per_unit
df$Total_Sales <- total_sales
View(df)

# Find the minimum and maximum values for all numeric vectors individually
min_serial_number <- min(df$Serial_Number)
max_serial_number <- max(df$Serial_Number)

min_units_sold <- min(df$Units_Sold)
max_units_sold <- max(df$Units_Sold)

min_price_per_unit <- min(df$Price_Per_Unit)
max_price_per_unit <- max(df$Price_Per_Unit)

min_total_sales <- min(df$Total_Sales)
max_total_sales <- max(df$Total_Sales)

# Print the results
cat("Minimum Serial Number:", min_serial_number, "\n")
cat("Maximum Serial Number:", max_serial_number, "\n\n")

cat("Minimum Units Sold:", min_units_sold, "\n")
cat("Maximum Units Sold:", max_units_sold, "\n\n")

cat("Minimum Price Per Unit:", min_price_per_unit, "\n")
cat("Maximum Price Per Unit:", max_price_per_unit, "\n\n")

cat("Minimum Total Sales:", min_total_sales, "\n")
cat("Maximum Total Sales:", max_total_sales, "\n")

# Calculate the sum and average of all numeric vectors individually
sum_serial_number <- sum(df$Serial_Number)
avg_serial_number <- mean(df$Serial_Number)

sum_units_sold <- sum(df$Units_Sold)
avg_units_sold <- mean(df$Units_Sold)

sum_price_per_unit <- sum(df$Price_Per_Unit)
avg_price_per_unit <- mean(df$Price_Per_Unit)

sum_total_sales <- sum(df$Total_Sales)
avg_total_sales <- mean(df$Total_Sales)

# Print the results
cat("Sum of Serial Numbers:", sum_serial_number, "\n")
cat("Average of Serial Numbers:", avg_serial_number, "\n\n")

cat("Sum of Units Sold:", sum_units_sold, "\n")
cat("Average of Units Sold:", avg_units_sold, "\n\n")

cat("Sum of Price Per Unit:", sum_price_per_unit, "\n")
cat("Average of Price Per Unit:", avg_price_per_unit, "\n\n")

cat("Sum of Total Sales:", sum_total_sales, "\n")
cat("Average of Total Sales:", avg_total_sales, "\n")

# Print the top six rows of the data set
print(head(df, 6))

# Print the bottom six rows of the data set
print(tail(df, 6))

# Print the 7th row of the data set
print(df[7, ])

# Print only the second column of the data set
print(df[, 2])

#Get the number of rows
cat("Number of rows in the dataframe are : ",dim(df)[1])

#Get the number of columns 
cat("Number of columns in the dataframe are : ",dim(df)[2])

# Get the dimensions of the data frame
dimensions <- dim(df)

# Print the results
print(paste("Dimensions of the data frame: Rows =", dimensions[1], ", Columns =", dimensions[2]))

# Print the vector names of the data set
print(names(df))

# Print the row names of the data set
print(row.names(df))

# Print the value in the third row from the second column
cat("The value in the third row from the second column is : ",df[3, 2])

# Print the values in rows 3 and 5, columns 3 through 5
print("The values in rows 3 and 5, columns 3 through 5 is : ")
print(df[c(3, 5), (3:5)])
