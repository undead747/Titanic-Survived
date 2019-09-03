#Load raw data
train <- read.csv("train.csv", header = TRUE)
test <- read.csv("test.csv", header = TRUE)

#Add a "Survived" to the test set to allow for combining data sets
#Make a new variable and call it "test.survived", after that create a new data.frame with have a combine of
# bunch of column name survived with have "None" varible and all the variable of test.csv 
test.survived <- data.frame(Survived = rep("None",nrow(test)),test[,])
test.survived <- test.survived[,c(2,1,3,4,5,6,7,8,9,10,11,12)]

#Combine data sets
data.combined <- rbind(train, test.survived)

#A bit about R data types
str(data.combined)

#Factors are the data objects which are used to categorize the data and store it as levels. 
#They can store both strings and integers. They are useful in the columns which have a
#limited number of unique values. Like "Male, "Female" and True, False etc. They are useful
#in data analysis for statistical modeling.

# On creating any data frame with a column of text data,
# R treats the text column as categorical data and creates factors on it.


data.combined$Survived <- as.factor(data.combined$Survived)
data.combined$Pclass <- as.factor(data.combined$Pclass)


