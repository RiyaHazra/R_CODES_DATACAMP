# R_CODES_DATACAMP

# Importing data in R

# import swimming_pools.csv correctly: pools
pools <- read.csv("swimming_pools.csv",stringsAsFactors=FALSE )

# Check the structure of pools
str(pools)
is.character(pools)

# Import hotdogs.txt: hotdogs
hotdogs <- read.delim("hotdogs.txt",header=FALSE)

# Summarize hotdogs
summary(dogs)

# Path to the hotdogs.txt file: path
path <- file.path("data", "hotdogs.txt")

# Import the hotdogs.txt file: hotdogs
hotdogs <- read.table(path, 
                      sep = "\t" , 
                      col.names = c("type", "calories", "sodium"))

# Call head() on hotdogs
head(hotdogs)

# Finish the read.delim() call
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]

# Select the observation with the most sodium: tom
tom <- hotdogs[which.max(hotdogs$sodium), ]

# Print lily and tom
print(lily)
print(tom)

# Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Display structure of hotdogs
str(hotdogs)

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor","NULL","numeric"))


# Display structure of hotdogs2
str(hotdogs2)

# Load the readr package
library(readr)

# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv("potatoes.csv")

# readr is already loaded
library(readr)

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import potatoes.txt: potatoes
potatoes <- read_tsv("potatoes.txt",properties)

# Call head() on potatoes
head(potatoes)

# readr is already loaded
library(readr)
# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import potatoes.txt using read_delim(): potatoes
potatoes<-read_delim("potatoes.txt",delim="\t",col_names=properties)

# Print out potatoes
print(potatoes)

# readr is already loaded
library(readr)
# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import 5 observations from potatoes.txt: potatoes_fragment
potatoes_fragment <- read_tsv("potatoes.txt", skip = 6, n_max = 5, col_names = properties)

# readr is already loaded
library(readr)
# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import all data, but force all columns to be character: potatoes_char
potatoes_char <- read_tsv("potatoes.txt", col_types = "cccccccc", col_names = properties)

# Print out structure of potatoes_char
str(potatoes_char)

# readr is already loaded
library(readr)

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))

# Display the summary of hotdogs
summary(hotdogs)

# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt",col_names= c("type", "calories", "sodium"),col_types = list(fac,int,int))

# Display the summary of hotdogs_factor
summary(hotdogs_factor)

# load the data.table package
library(data.table)

# Import potatoes.csv with fread(): potatoes
potatoes<-fread("potatoes.csv")

# Print out potatoes
print(potatoes)

# fread is already loaded
library(data.table)
# Import columns 6 and 8 of potatoes.csv: potatoes
potatoes<-fread("potatoes.csv",select = c(6,8))

# Plot texture (x) and moistness (y) of potatoes
plot(potatoes$texture,potatoes$moistness)

# Load the readxl package
library(readxl)

# Print out the names of both spreadsheets
excel_sheets("urbanpop.xlsx")

# The readxl package is already loaded
library(readxl)
# Read the sheets, one by one
pop_1 <- read_excel("urbanpop.xlsx", sheet = 1)
pop_2 <- read_excel("urbanpop.xlsx", sheet = 2)
pop_3 <- read_excel("urbanpop.xlsx", sheet = 3)


# Put pop_1, pop_2 and pop_3 in a list: pop_list

pop_list<-list(pop_1,pop_2,pop_3)

# Display the structure of pop_list
str(pop_list)

# The readxl package is already loaded
library(readxl)

# Read all Excel sheets with lapply(): pop_list
pop_list<-lapply(excel_sheets("urbanpop.xlsx"),read_excel,path="urbanpop.xlsx")

# Display the structure of pop_list
str(my_workbook)

# The readxl package is already loaded
library(readxl)


# Import the the first Excel sheet of urbanpop_nonames.xlsx (R gives names): pop_a
pop_a<-read_excel("urbanpop_nonames.xlsx",sheet=1,col_names=FALSE)

# Import the the first Excel sheet of urbanpop_nonames.xlsx (specify col_names): pop_b
cols <- c("country", paste0("year_", 1960:1966))
pop_b<-read_excel("urbanpop_nonames.xlsx",sheet=1,col_names=cols)

# Print the summary of pop_a
summary(pop_a)

# Print the summary of pop_b
summary(pop_b)

# The readxl package is already loaded
library(readxl)

# Import the second sheet of urbanpop.xlsx, skipping the first 21 rows: urbanpop_sel
urbanpop_sel<-read_excel("urbanpop.xlsx",sheet=2,col_names=FALSE,skip=21)

# Print out the first observation from urbanpop_sel
print(head(urbanpop_sel,n=1))

# Load the gdata package
library(gdata)

# Import the second sheet of urbanpop.xls: urban_pop
urban_pop<-read.xls("urbanpop.xls",sheet="1967-1974")

# Print the first 11 observations using head()
print(head(urban_pop,n=11))

# The gdata package is alreaded loaded
library(gdata)

# Column names for urban_pop
columns <- c("country", paste0("year_", 1967:1974))

# Finish the read.xls call
urban_pop <- read.xls("urbanpop.xls", sheet = 2,
                      skip = 50, header = FALSE, stringsAsFactors = FALSE,
                      col.names = columns)

# Print first 10 observation of urban_pop
print(head(urban_pop,n=10))

# Add code to import data from all three sheets in urbanpop.xls
path <- "urbanpop.xls"
urban_sheet1 <- read.xls(path, sheet = 1, stringsAsFactors = FALSE)
urban_sheet2 <- read.xls(path, sheet = 2, stringsAsFactors = FALSE)
urban_sheet3 <- read.xls(path, sheet = 3, stringsAsFactors = FALSE)


# Extend the cbind() call to include urban_sheet3: urban
urban <- cbind(urban_sheet1, urban_sheet2[-1], urban_sheet3[-1])

# Remove all rows with NAs from urban: urban_clean
urban_clean<-na.omit(urban)

# Print out a summary of urban_clean
summary(urban_clean)

# urbanpop.xlsx is available in your working directory
dir()

# Load the XLConnect package
library("XLConnect")

# Build connection to urbanpop.xlsx: my_book
my_book<-loadWorkbook("urbanpop.xlsx")

# Print out the class of my_book
print(class(my_book))

# XLConnect is already available
library("XLConnect")

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# List the sheets in my_book
getSheets(my_book)

# Import the second sheet in my_book
read<-readWorksheet(my_book,sheet=2)
print(read)

# XLConnect is already available
library("XLConnect")

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# Import columns 3, 4, and 5 from second sheet in my_book: urbanpop_sel
urbanpop_sel <- readWorksheet(my_book, sheet = 2,startCol=3,endCol=5)

# Import first column from second sheet in my_book: countries
countries <- readWorksheet(my_book, sheet = 2,startCol=1,endCol=1)

# cbind() urbanpop_sel and countries together: selection
selection<-cbind(countries,urbanpop_sel)

# XLConnect is already available
library("XLConnect")

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

## Add a worksheet to my_book, named "data_summary"
createSheet(my_book,name="data_summary")

# Use getSheets() on my_book
getSheets(my_book)

# XLConnect is already available
library("XLConnect")

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")

# Add a worksheet to my_book, named "data_summary"
createSheet(my_book, "data_summary")

# Create data frame: summ
sheets <- getSheets(my_book)[1:3]
dims <- sapply(sheets, function(x) dim(readWorksheet(my_book, sheet = x)), USE.NAMES = FALSE)
summ <- data.frame(sheets = sheets,
                   nrows = dims[1, ],
                   ncols = dims[2, ])

# Add data in summ to "data_summary" sheet
writeWorksheet(my_book,summ,sheet="data_summary")

# Save workbook as summary.xlsx
saveWorkbook(my_book,file="summary.xlsx")

# my_book is available
library("XLConnect")
my_book<-loadWorkbook("urbanpop.xlsx")

# Rename "data_summary" sheet to "summary"
renameSheet(my_book,"data_summary","summary")

# Print out sheets of my_book
getSheets(my_book)

# Save workbook to "renamed.xlsx"
saveWorkbook(my_book,file="renamed.xlsx")

# Load the XLConnect package
library("XLConnect")

# Build connection to renamed.xlsx: my_book
my_book<-loadWorkbook("renamed.xlsx")

# Remove the fourth sheet
removeSheet(my_book,sheet=4)

# Save workbook to "clean.xlsx"
saveWorkbook(my_book,file="clean.xlsx")
