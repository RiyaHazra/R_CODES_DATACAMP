# R_CODES_DATACAMP

###Importing data in R

-- Import swimming_pools.csv correctly: pools
pools <- read.csv("swimming_pools.csv",stringsAsFactors=FALSE )

###### Check the structure of pools
str(pools)
is.character(pools)

###### Import hotdogs.txt: hotdogs
hotdogs <- read.delim("hotdogs.txt",header=FALSE)

###### Summarize hotdogs
summary(dogs)

###### Path to the hotdogs.txt file: path
path <- file.path("data", "hotdogs.txt")

###### Import the hotdogs.txt file: hotdogs
hotdogs <- read.table(path, 
                      sep = "\t" , 
                      col.names = c("type", "calories", "sodium"))

###### Call head() on hotdogs
head(hotdogs)

###### Finish the read.delim() call
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

###### Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]

###### Select the observation with the most sodium: tom
tom <- hotdogs[which.max(hotdogs$sodium), ]

###### Print lily and tom
print(lily)
print(tom)

###### Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

###### Display structure of hotdogs
str(hotdogs)

###### Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor","NULL","numeric"))


###### Display structure of hotdogs2
str(hotdogs2)

###### Load the readr package
library(readr)

###### Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv("potatoes.csv")

###### readr is already loaded
library(readr)

###### Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

###### Import potatoes.txt: potatoes
potatoes <- read_tsv("potatoes.txt",properties)

###### Call head() on potatoes
head(potatoes)

###### readr is already loaded
library(readr)
###### Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

###### Import potatoes.txt using read_delim(): potatoes
potatoes<-read_delim("potatoes.txt",delim="\t",col_names=properties)

###### Print out potatoes
print(potatoes)

###### readr is already loaded
library(readr)
###### Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

###### Import 5 observations from potatoes.txt: potatoes_fragment
potatoes_fragment <- read_tsv("potatoes.txt", skip = 6, n_max = 5, col_names = properties)

###### readr is already loaded
library(readr)
###### Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

###### Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv("potatoes.txt", col_types = "cccccccc", col_names = properties)

###### Print out structure of potatoes_char
str(potatoes_char)

###### readr is already loaded
library(readr)

###### Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))

###### Display the summary of hotdogs
summary(hotdogs)

###### The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

###### Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt",col_names= c("type", "calories", "sodium"),col_types = list(fac,int,int))

###### Display the summary of hotdogs_factor
summary(hotdogs_factor)

###### load the data.table package
library(data.table)

###### Import potatoes.csv with fread(): potatoes
potatoes<-fread("potatoes.csv")

###### Print out potatoes
print(potatoes)

###### fread is already loaded
library(data.table)
###### Import columns 6 and 8 of potatoes.csv: potatoes
potatoes<-fread("potatoes.csv",select = c(6,8))

###### Plot texture (x) and moistness (y) of potatoes
plot(potatoes$texture,potatoes$moistness)

###### Load the readxl package
library(readxl)

###### Print out the names of both spreadsheets
excel_sheets("urbanpop.xlsx")

###### The readxl package is already loaded
library(readxl)
###### Read the sheets, one by one
pop_1 <- read_excel("urbanpop.xlsx", sheet = 1)
pop_2 <- read_excel("urbanpop.xlsx", sheet = 2)
pop_3 <- read_excel("urbanpop.xlsx", sheet = 3)


###### Put pop_1, pop_2 and pop_3 in a list: pop_list
 
pop_list<-list(pop_1,pop_2,pop_3)

###### Display the structure of pop_list
str(pop_list)

###### The readxl package is already loaded
library(readxl)

###### Read all Excel sheets with lapply(): pop_list
pop_list<-lapply(excel_sheets("urbanpop.xlsx"),read_excel,path="urbanpop.xlsx")

###### Display the structure of pop_list
str(my_workbook)

###### The readxl package is already loaded
library(readxl)


###### Import the the first Excel sheet of urbanpop_nonames.xlsx (R gives names): pop_a
pop_a<-read_excel("urbanpop_nonames.xlsx",sheet=1,col_names=FALSE)

###### Import the the first Excel sheet of urbanpop_nonames.xlsx (specify col_names): pop_b
cols <- c("country", paste0("year_", 1960:1966))
pop_b<-read_excel("urbanpop_nonames.xlsx",sheet=1,col_names=cols)

###### Print the summary of pop_a
summary(pop_a)

###### Print the summary of pop_b
summary(pop_b)

###### The readxl package is already loaded
library(readxl)

###### Import the second sheet of urbanpop.xlsx, skipping the first 21 rows: urbanpop_sel
urbanpop_sel<-read_excel("urbanpop.xlsx",sheet=2,col_names=FALSE,skip=21)

###### Print out the first observation from urbanpop_sel
print(head(urbanpop_sel,n=1))

###### Load the gdata package
library(gdata)

###### Import the second sheet of urbanpop.xls: urban_pop
urban_pop<-read.xls("urbanpop.xls",sheet="1967-1974")

###### Print the first 11 observations using head()
print(head(urban_pop,n=11))

###### The gdata package is alreaded loaded
library(gdata)

###### Column names for urban_pop
columns <- c("country", paste0("year_", 1967:1974))

###### Finish the read.xls call
urban_pop <- read.xls("urbanpop.xls", sheet = 2,
                      skip = 50, header = FALSE, stringsAsFactors = FALSE,
                      col.names = columns)

###### Print first 10 observation of urban_pop
print(head(urban_pop,n=10))

###### Add code to import data from all three sheets in urbanpop.xls
path <- "urbanpop.xls"
urban_sheet1 <- read.xls(path, sheet = 1, stringsAsFactors = FALSE)
urban_sheet2 <- read.xls(path, sheet = 2, stringsAsFactors = FALSE)
urban_sheet3 <- read.xls(path, sheet = 3, stringsAsFactors = FALSE)


###### Extend the cbind() call to include urban_sheet3: urban
urban <- cbind(urban_sheet1, urban_sheet2[-1], urban_sheet3[-1])

###### Remove all rows with NAs from urban: urban_clean
urban_clean<-na.omit(urban)

###### Print out a summary of urban_clean
summary(urban_clean)

###### urbanpop.xlsx is available in your working directory
dir()

###### Load the XLConnect package
library("XLConnect")

###### Build connection to urbanpop.xlsx: my_book
my_book<-loadWorkbook("urbanpop.xlsx")

###### Print out the class of my_book
print(class(my_book))

###### XLConnect is already available
library("XLConnect")

###### Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

###### List the sheets in my_book
getSheets(my_book)

###### Import the second sheet in my_book
read<-readWorksheet(my_book,sheet=2)
print(read)

###### XLConnect is already available
library("XLConnect")

###### Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

###### Import columns 3, 4, and 5 from second sheet in my_book: urbanpop_sel
urbanpop_sel <- readWorksheet(my_book, sheet = 2,startCol=3,endCol=5)

###### Import first column from second sheet in my_book: countries
countries <- readWorksheet(my_book, sheet = 2,startCol=1,endCol=1)

###### cbind() urbanpop_sel and countries together: selection
selection<-cbind(countries,urbanpop_sel)

###### XLConnect is already available
library("XLConnect")

###### Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

############ Add a worksheet to my_book, named "data_summary"
createSheet(my_book,name="data_summary")

###### Use getSheets() on my_book
getSheets(my_book)

###### XLConnect is already available
library("XLConnect")

###### Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

###### Add a worksheet to my_book, named "data_summary"
createSheet(my_book, "data_summary")

###### Create data frame: summ
sheets <- getSheets(my_book)[1:3]
dims <- sapply(sheets, function(x) dim(readWorksheet(my_book, sheet = x)), USE.NAMES = FALSE)
summ <- data.frame(sheets = sheets,
                   nrows = dims[1, ],
                   ncols = dims[2, ])

###### Add data in summ to "data_summary" sheet
writeWorksheet(my_book,summ,sheet="data_summary")

###### Save workbook as summary.xlsx
saveWorkbook(my_book,file="summary.xlsx")

###### my_book is available
library("XLConnect")
my_book<-loadWorkbook("urbanpop.xlsx")

###### Rename "data_summary" sheet to "summary"
renameSheet(my_book,"data_summary","summary")

###### Print out sheets of my_book
getSheets(my_book)

###### Save workbook to "renamed.xlsx"
saveWorkbook(my_book,file="renamed.xlsx")

###### Load the XLConnect package
library("XLConnect")

###### Build connection to renamed.xlsx: my_book
my_book<-loadWorkbook("renamed.xlsx")

###### Remove the fourth sheet
removeSheet(my_book,sheet=4)

###### Save workbook to "clean.xlsx"
saveWorkbook(my_book,file="clean.xlsx")



### Intermediate R


###### Comparison of logicals
TRUE == FALSE

###### Comparison of numerics
-6 * 14 != 17-101

###### Comparison of character strings
"useR" == "user"

###### Compare a logical with a numeric
TRUE == 1

###### Comparison of numerics
-6 * 5 + 2 >= -10 + 1

###### Comparison of character strings
"raining" <="raining dogs"

###### Comparison of logicals
TRUE > FALSE

###### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

###### Popular days
linkedin>15

###### Quiet days
linkedin<=5

###### LinkedIn more popular than Facebook
linkedin>facebook

###### The social deen created for youata has b
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
 facebook<- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

###### When does views equal 13?
views==13

###### When is views less than or equal to 14?
views<=14

###### The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

###### Is last under 5 or above 10?
last<5 | last>10

###### Is last between 15 (exclusive) and 20 (inclusive)?
last>15 & last<=20

###### The social data (linkedin, facebook, views) has been created for you

###### linkedin exceeds 10 but facebook below 10
linkedin>10 & facebook<10

###### When were one or both visited at least 12 times?
linkedin>=12 | facebook>=12

###### When is views between 11 (exclusive) and 14 (inclusive)?
views>11&views<=14

###### li_df is pre-loaded in your workspace
li_df

###### Select the second column, named day2, from li_df: second
second<-subset(li_df,select=day2)

###### Build a logical vector, TRUE if value in second is extreme: extremes
extremes<-second>25 | second<5

###### Count the number of TRUEs in extremes
sum(extremes)

###### Solve it with a one-liner
print(sum(extremes))

###### Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

###### Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

###### Write the if statement for num_views
if(num_views > 15){
  print("You're popular!")
}

###### Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

###### Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}else{
  print("Unknown medium")
}

###### Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

###### Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

###### Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  
  
###### Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

###### Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average") 
} else {
  print("Try to be more visible!")
}

###### Variables related to your last day of recordings
li <- 15
fb <- 9

###### Code the control-flow construct
if (li>15 & fb>15) {
  sms <- 2 * (li + fb)
} else if  (li<10 & fb<10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li+fb
}

###### Print the resulting sms to the console
print(sms)

###### Initialize the speed variable
speed <- 64

###### Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}

###### Print out the speed variable
print(speed)

###### Initialize the speed variable
speed <- 64

###### Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed > 48 ) {
  print("Slow down big time!")
  speed <- speed - 11  
  } else {
  print("Slow down!")
  speed <- speed - 6
  }
}


###### Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
 ###### Break the while loop when speed exceeds 80
  if (speed > 80 ) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

###### Initialize i as 1 
i <- 1

###### Code the while loop
while (i <= 10) {
  print(3*i)
  if ((3*i) %% 8 == 0) {
    break
  }
  i <- i + 1
}

###### The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

###### Loop version 1
for(l in linkedin){
  print(l)
}



###### Loop version 2
for(i in 1:length(linkedin)){
  print(linkedin[i])
}

###### The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

###### Loop version 1
for(n in nyc){
  print(n)
}



###### Loop version 2
for(i in 1:length(nyc)){
  print(nyc[[i]])
}

###### The tic-tac-toe matrix ttt has already been defined for you

###### define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i,"and column", j,"the board contains", ttt[i,j]))
  }
}

###### The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

###### Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10 ) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

###### The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

###### Extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
 if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  } else if(li < 5) {
    print("This is too embarrassing!")
    next
  } 
   print(li)
}


###### Consult the documentation on the mean() function
help(mean)


###### Inspect the arguments of the mean() function
args(mean)

###### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

###### Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)


###### Inspect avg_li and avg_fb
args(avg_li)
args(avg_fb)

print(avg_li)
print(avg_fb)

###### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

###### Calculate the mean of the sum
sum1 <- sum(linkedin)
sum2 <- sum(facebook)
sum3 <- sum1 + sum2
avg_sum <- mean(linkedin+facebook)

###### Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin+facebook, trim = 0.2)

###### Inspect both new variables
print(avg_sum)
print(avg_sum_trimmed)

###### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

###### Basic average of linkedin
print(mean(linkedin))

###### Advanced average of linkedin
print(mean(linkedin,na.rm=TRUE))

###### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

###### Calculate the mean absolute deviation
print(mean(abs(linkedin - facebook),na.rm=TRUE))

###### Create a function pow_two()
pow_two<-function(x){
  x*x
}


###### Use the function
print(pow_two(12))

###### Create a function sum_abs()
sum_abs<-function(x,y){
  sum(abs(x),abs(y))
}


###### Use the function
print(sum_abs(-2,3))

###### Define the function hello()
hello<-function()
{
  print("Hi there!")
  return(TRUE)
  
}


###### Call the function hello()
hello()

###### Finish the pow_two() function
pow_two <- function(x,print_info=TRUE) {
  y <- x ^ 2
  if(print_info==TRUE){
  print(paste(x, "to the power two equals", y))
  }
  return(y)
}

pow_two(2,TRUE)
pow_two(2)

###### The linkedin and facebook vectors have already been created for you

###### Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
      print("You're popular!")
      return (num_views)
  } else {
      print("Try to be more visible!")
      return (0)

  }
}

###### Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])

###### The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

###### The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

###### Define the interpret_all() function
###### views: vector with data to interpret
###### return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum=TRUE) {
  count <- 0

  for (v in views) {
  count<-count+interpret(v)

  }

  if (return_sum==TRUE) {
      return (count)      
  } else {
      return(NULL)
  }
}

###### Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

###### Load the ggplot2 package
library(ggplot2)

###### Retry the qplot() function
qplot(mtcars$wt,mtcars$hp)

###### Check out the currently attached packages again
search()

###### The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

###### Split names from birth year
split_math <- strsplit(pioneers, split = ":")
str(split_math)


###### Convert to lowercase strings: split_low
split_low<-lapply(split_math,tolower)

###### Take a look at the structure of split_low
str(split_low)

###### Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
print(split)
split_low <- lapply(split, tolower)
print(split_low)


###### Write function select_first()
select_first<-function(x){
  x[1]
}



###### Apply select_first() over split_low: names
names<-lapply(split_low,select_first)
print(names)


###### Write function select_second()
select_second<-function(x){
  x[2]
}


###### Apply select_second() over split_low: years
years<-lapply(split_low,select_second)
print(years)

###### Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

###### Transform: use anonymous function inside lapply

names <- lapply(split_low,function(x) {x[1]} )

###### Transform: use anonymous function inside lapply

years <- lapply(split_low, function(x) {x[2]})

###### Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

###### Generic select function
select_el <- function(x, index) {
  x[index]
}

###### Use lapply() twice on split_low: names and years

names<-lapply(split_low,select_el,index=1)


years<-lapply(split_low,select_el,index=2)

###### temp has already been defined in the workspace
str(temp)

###### Use lapply() to find each day's minimum temperature
min_temp<-lapply(temp,min)
print(min_temp)


###### Use sapply() to find each day's minimum temperature
min_temp<-sapply(temp,min)
print(min_temp)

###### Use lapply() to find each day's maximum temperature
max_temp<-lapply(temp,max)
print(max_temp)

###### Use sapply() to find each day's maximum temperature
max_temp<-sapply(temp,max)
print(max_temp)

###### temp is already defined in the workspace
str(temp)

###### Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x)) / 2
}

###### Apply extremes_avg() over temp using sapply()
s_check<-sapply(temp,extremes_avg)
print(s_check)

###### Apply extremes_avg() over temp using lapply()
l_check<-lapply(temp,extremes_avg)
print(l_check)

###### temp is already available in the workspace

###### Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

###### Apply extremes() over temp with sapply()
s_check<-sapply(temp,extremes)
print(s_check)

###### Apply extremes() over temp with lapply()
l_check<-lapply(temp,extremes)
print(l_check)

###### temp is already prepared for you in the workspace
str(temp)

###### Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

###### Apply below_zero over temp using sapply(): freezing_s
freezing_s<-sapply(temp,below_zero)
print(freezing_s)

###### Apply below_zero over temp using lapply(): freezing_l
freezing_l<-lapply(temp,below_zero)
print(freezing_l)

###### Are freezing_s and freezing_l identical?
identical(freezing_s,freezing_l)

###### temp is already available in the workspace

###### Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

###### Apply print_info() over temp using sapply()
s_check<-sapply(temp,print_info)
print(s_check)

###### Apply print_info() over temp using lapply()
l_check<-lapply(temp,print_info)
print(l_check)

###### temp is already available in the workspace

###### Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

###### Apply basics() over temp using vapply()
v_check<-vapply(temp,basics,numeric(3))
print(v_check)

###### temp is already available in the workspace

###### Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

###### Fix the error:
vapply(temp, basics, numeric(4))

###### temp is already defined in the workspace

###### Convert to vapply() expression
vapply(temp,max,numeric(1))

###### Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5,logical(1))

###### The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

###### Sum of absolute rounded values of errors
print(sum(abs(round(errors))))

###### Don't edit these two lines
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
print(vec2)

###### Fix the error
mean(c(abs(vec1), abs(vec2)))

###### The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

###### Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec<-unlist(linkedin)
fb_vec<-unlist(facebook)


###### Append fb_vec to li_vec: social_vec
social_vec<-append(li_vec,fb_vec)

###### Sort social_vec
sort(social_vec,decreasing=TRUE)
print(social_vec)

###### Fix me
print(rep(seq(1, 7, by = 2), times = 7))

###### Create first sequence: seq1
seq1<-seq(from=1,to=500,by=3)

###### Create second sequence: seq2
seq2<-seq(from=1200,to=900,by=-7)

###### Calculate total sum of the sequences
sum(seq1,seq2)

###### The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

###### Use grepl() to match for "edu"
grepl(pattern="edu",x=emails)

###### Use grep() to match for "edu", save result to hits
hits<-grep(pattern="edu",x=emails)

###### Subset emails using hits
emails[hits]

###### The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

###### Use grepl() to match for .edu addresses more robustly
grepl(pattern="@.*\\.edu$",x=emails)

###### Use grep() to match for .edu addresses more robustly, save result to hits
hits<-grep(pattern="@.*\\.edu$",x=emails)

###### Subset emails using hits
emails[hits]

###### The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

###### Use sub() to convert the email domains to datacamp.edu
sub(pattern="@.*\\.edu$",replacement="@datacamp.edu",x=emails)

###### Get the current date: today
today<-Sys.Date()

###### See what today looks like under the hood
unclass(today)

###### Get the current time: now
now<-Sys.time()

###### See what now looks like under the hood
unclass(now)

###### Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

###### Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2, format = "%Y-%m-%d")
date3 <- as.Date(str3, format = "%d/%B/%Y")

###### Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")

###### Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

###### Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2)

###### Convert times to formatted strings
format(time1,"%M")
format(time2,"%I:%M%p")

###### day1, day2, day3, day4 and day5 are already available in the workspace

###### Difference between last and first pizza day
day5-day1

###### Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

###### Create differences between consecutive pizza days: day_diff
day_diff<-diff(pizza)

###### Average period between two consecutive pizza days
mean(day_diff)

###### login and logout are already defined in the workspace
###### Calculate the difference between login and logout: time_online
time_online<-logout-login

###### Inspect the variable time_online
print(time_online)

###### Calculate the total time online
sum(time_online)

###### Calculate the average time online
mean(time_online)

###### Convert astro to vector of Date objects: astro_dates
astro_dates<-as.Date(astro,format="%d-%b-%Y")

###### Convert meteo to vector of Date objects: meteo_dates
meteo_dates<-as.Date(meteo,format="%B %d, %y")


###### Calculate the maximum absolute difference between astro_dates and meteo_dates
print(max(abs(astro_dates-meteo_dates)))


### Cleaning data in R

###### View the first 6 rows of data
head(weather)

###### View the last 6 rows of data
tail(weather)

###### View a condensed summary of the data
str(weather)

###### View the first 6 rows of data
head(weather_clean)

###### View the last 6 rows of data
tail(weather_clean)

###### View a condensed summary of the data
str(weather_clean)

###### Check the class of bmi
class(bmi)

###### Check the dimensions of bmi
dim(bmi)

###### View the column names of bmi
names(bmi)

###### Check the structure of bmi
str(bmi)

###### Load dplyr
library(dplyr)

###### Check the structure of bmi, the dplyr way
glimpse(bmi)

###### View a summary of bmi
summary(bmi)

###### Print bmi to the console
bmi

###### View the first 6 rows
head(bmi)

###### View the first 15 rows
head(bmi,n=15)

###### View the last 6 rows
tail(bmi)

###### View the last 10 rows
tail(bmi,n=10)

###### Apply gather() to bmi and save the result as bmi_long
bmi_long <- gather(bmi,year,bmi_val,-Country)

###### View the first 20 rows of the result
head(bmi_long,n=20)

###### Apply spread() to bmi_long
bmi_wide <- spread(bmi_long,year,bmi_val)

###### View the head of bmi_wide
head(bmi_wide)

###### Apply separate() to bmi_cc
bmi_cc_clean <- separate(bmi_cc, col = Country_ISO, into = c("Country", "ISO"), sep = "/")

###### Print the head of the result
head(bmi_cc_clean)

###### Apply unite() to bmi_cc_clean
bmi_cc <- unite(bmi_cc_clean,Country_ISO,Country,ISO, sep = "-")

###### View the head of the result
head(bmi_cc)

###### tidyr and dplyr are already loaded for you

###### View the head of census
head(census)

###### Gather the month columns
census2 <- gather(census,month,amount,-YEAR)

###### Arrange rows by YEAR using dplyr's arrange
census2 <- arrange(census2, YEAR)

###### View first 20 rows of census2
head(census2,n=20)

###### tidyr is already loaded for you

###### View first 50 rows of census_long
head(census_long,n=50)

###### Spread the type column
census_long2<-spread(census_long,type,amount)

###### View first 20 rows of census_long2
head(census_long2,n=20)

###### tidyr is already loaded for you

###### View the head of census_long3
head(census_long3)

###### Separate the yr_month column into two
census_long4 <- separate(census_long3,yr_month,c("year","month"))

###### View the first 6 rows of the result
head(census_long4,n=6)

###### Preview students with str()
str(students)

###### Coerce Grades to character
students$Grades <- as.character(students$Grades)

###### Coerce Medu to factor
students$Medu <- as.factor(students$Medu)

###### Coerce Fedu to factor
students$Fedu <- as.factor(students$Fedu) 
    
###### Look at students once more with str()
str(students)

###### Preview students2 with str()
str(students2)

###### Load the lubridate package
library(lubridate)

###### Parse as date
print(dmy("17 Sep 2015"))

###### Parse as date and time (with no seconds!)
"July 15, 2012 12:56"
print(mdy_hm("July 15, 2012 12:56"))

###### Coerce dob to a date (with no time)
students2$dob <- ymd(students2$dob)

###### Coerce nurse_visit to a date and time
students2$nurse_visit <- ymd_hms(students2$nurse_visit)
    
###### Look at students2 once more with str()
str(students2)

###### Load the stringr package
library(stringr)

###### Trim all leading and trailing whitespace
a<-c("   Filip ", "Nick  ", " Jonathan")
str_trim(a)

###### Pad these strings with leading zeros
b<-c("23485W", "8823453Q", "994Z")
str_pad(b,width=9, side = "left", pad = "0")

###### Print state abbreviations
print(states)

###### Make states all uppercase and save result to states_upper
states_upper<-toupper(states)

###### Make states_upper all lowercase again
print(tolower(states_upper))

###### stringr has been loaded for you

###### Look at the head of students2
head(students2)

###### Detect all dates of birth (dob) in 1997
str_detect(students2$dob,"1997")

###### In the sex column, replace "F" with "Female"...
students2$sex <- str_replace(students2$sex,"F","Female")

###### ...And "M" with "Male"
students2$sex <-  str_replace(students2$sex,"M","Male")

###### View the head of students2
head(students2)

###### Call is.na() on the full social_df to spot all NAs
is.na(social_df)

###### Use the any() function to ask whether there are any NAs in the data
any(is.na(social_df))

###### View a summary() of the dataset
summary(social_df)

###### Call table() on the status column
table(social_df$status)

###### Look at a summary() of students3
summary(students3)

###### View a histogram of the age variable
hist(students3$age)

###### View a histogram of the absences variable
hist(students3$absences)

###### View a histogram of absences, but force zeros to be bucketed to the right of zero
hist(students3$absences,plot=TRUE,right=FALSE)

###### Verify that weather is a data.frame
class(weather)

###### Check the dimensions
dim(weather)

###### View the column names
names(weather)

###### View the structure of the data
str(weather)

###### Load dplyr package
library(dplyr)

###### Look at the structure using dplyr's glimpse()
glimpse(weather)

###### View a summary of the data
summary(weather)

###### View first 6 rows
head(weather)

###### View first 15 rows
head(weather,n=15)

###### View the last 6 rows
tail(weather)

###### View the last 10 rows
tail(weather,n=10)

###### Load the tidyr package
library(tidyr)

###### Gather the columns
weather2 <- gather(weather,day,value,-X,-year,-month,-measure,na.rm = TRUE)

###### View the head
head(weather2)

###### The tidyr package is already loaded
library(tidyr)

###### First remove column of row names
weather2 <- weather2[, -1]

###### Spread the data
weather3 <- spread(weather2,measure,value)

###### View the head
head(weather3)

###### tidyr and dplyr are already loaded

###### Load the stringr and lubridate packages
library(stringr)
library(lubridate)


###### Remove X's from day column
weather3$day <- str_replace(weather3$day,"X","")

###### Unite the year, month, and day columns
weather4 <- unite(weather3,date,year,month,day, sep = "-")

###### Convert date column to proper date format using lubridates's ymd()
weather4$date <- ymd(weather4$date)

###### Rearrange columns using dplyr's select()
weather5 <- select(weather4, date, Events, CloudCover:WindDirDegrees)

###### View the head of weather5
head(weather5)

###### View the structure of weather5
str(weather5)

###### Examine the first 20 rows of weather5. Are most of the characters numeric?
head(weather5,n=20)

###### See what happens if we try to convert PrecipitationIn to numeric
as.numeric(weather5$PrecipitationIn)

###### The dplyr and stringr packages are already loaded

###### Replace T with 0 (T = trace)
weather5$PrecipitationIn <-str_replace(weather5$PrecipitationIn,"T",0) 

###### Convert characters to numerics
weather6 <- mutate_each(weather5, funs(as.numeric), CloudCover:WindDirDegrees)

###### Look at result
str(weather6)

###### Count missing values
sum(is.na(weather6))

###### Find missing values
summary(weather6)

###### Find indices of NAs in Max.Gust.SpeedMPH
ind <-which(is.na(weather6$Max.Gust.SpeedMPH)) 

###### Look at the full rows for records missing Max.Gust.SpeedMPH
weather6[ind, ]

###### Review distributions for all variables
summary(weather6)

###### Find row with Max.Humidity of 1000
ind <- which(weather6$Max.Humidity == 1000)

###### Look at the data for that day
weather6[ind, ]

###### Change 1000 to 100
weather6$Max.Humidity[ind] <- 100

###### Look at summary of Mean.VisibilityMiles
summary(weather6$Mean.VisibilityMiles)

###### Get index of row with -1 value
ind <- which(weather6$Mean.VisibilityMiles == -1)

###### Look at full row
print(weather6[ind, ])

###### Set Mean.VisibilityMiles to the appropriate value
weather6$Mean.VisibilityMiles[ind] <- 10

###### Clean up column names
names(weather6) <- new_colnames

###### Replace empty cells in events column
weather6$events[weather6$events == ""] <- "None"
    
###### Print the first 6 rows of weather6
head(weather6)
