############ Day 1 Exercises #############
### by Kumar Ramanathan, based on materials from Christina Maimone ###

#### REVIEW: BASICS AND DATA TYPES ####

#### Arithmetic ####

# Pick a number; save it as x
x <- 5

# Multiply x by 3
x * 3

# Take the log of the above (Hint, you need the function log() here)
log(x * 3)

# Subtract 4 from the above
log(x * 3) - 4

# Square the above
(log(x * 3) - 4)^2

#### Comparisons and Logical Operators ####

# Check if 1 is bigger than 2
1 > 2

# Check if 1 + 1 is equal to 2
1 + 1 == 2

# Check if it is true that the strings "eat" and "drink" are not equal to each other
"eat" != "drink"

# Check if it is true that 1 is equal to 1 *AND* 1 is equal to 2 
# (Hint: remember what the operators & and | do)
(1==1) & (1==2)

# Check if it is true that 1 is equal to 1 *OR* 1 is equal to 2
(1==1)|(1==2)

#### Packages and Functions ####

# Load the package tidyverse
library(tidyverse)

# Open the help file for the function recode 
# (Hint: remember what ? does)
?recode

#### REVIEW: DATA STRUCTURES ####

#### Vectors ####

# Run this code to generate variables x1 and x2
set.seed(1234)
x1 <- rnorm(5)
x2 <- rnorm(20, mean=0.5)

# Select the 3rd element in x1
x1[3]

# Select the elements of x1 that are less than 0
x1[x1 < 0]

# Select the elements of x2 that are greater than 1
x2[x2 > 1]

# Create x3 containing the first five elements of x2
x3 <- x2[1:5]
x3

# Select all but the third element of x1
x1[-3]

#### Missing values ####

# Generate a vector
vec <- c(1, 8, NA, 7, 3)

# Calculate the mean of vec, excluding the NA value
mean(vec, na.rm = TRUE)

# Count the number of missing values in vec
sum(is.na(vec))

#### Factors ####

# See lecture notes and DataCamp for guidance and practice


#### Lists ####

# See lecture notes and DataCamp for guidance and practice


#### Matricies ####

# Generate a matrix
mat <- matrix(c(1:51, rep(NA,4)), ncol=5)

# Select row 4, column 5
mat[4,5]

# Select column 3
mat[,3]

# Select column 1 and 5
mat[,c(1,5)]

# Bonus: How many NA values are there in this matrix?
sum(is.na(mat))

#### Data frames ####

# Load one of R's example data frames, mtcars
data(mtcars)

# Identify the number of observations (rows) and number of variables (columns)
nrow(mtcars)
ncol(mtcars)
dim(mtcars)

# Identify the names of the variables
names(mtcars)

# Select the variable 'mpg'
mtcars$mpg
mtcars["mpg"]

# Select the 4th row
mtcars[4,]

# Square the value of the 'cyl' variable and store this as a new variable 'cylsq'
mtcars$cyl
cylsq <- (mtcars$cyl)^2
cylsq
          
#### READING FILES ####

# Check your working directory. It should be the root folder where you downloaded the boot camp materials. If that's not the case, set your working directory accordingly.


# Read gapminder data with read.csv()
gapminder <- read.csv("data/gapminder5.csv", stringsAsFactors=FALSE)

# Load the readr package
library(readr)

# Read gapminder data with read_csv()
