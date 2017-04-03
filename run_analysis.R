library(reshape2)

## Set local working directory for class coursework
setwd("~/Documents/Data Science/getting and cleaning data/week 4/")

filename <- "getdata_dataset.zip"

## Download and extract the dataset from zip file:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Load activity labels and features for manipulation
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[,2] <- as.character(activities[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])


## Extract only the data on mean and standard deviation and clean up the variable names 
# This is for steps 2 & 4 as listed in homework
# Doing this early to only get data we need from the test datasets
# Could be done after merging, but this limits size of data we're starting with
meanStdev <- grep(".*mean.*|.*std.*", features[,2])
meanStdev.names <- features[meanStdev,2]
meanStdev.names = gsub('-mean', 'Mean', meanStdev.names)
meanStdev.names = gsub('-std', 'Std', meanStdev.names)
# For us in cleaning up the column names in th final datasets
meanStdev.names <- gsub('[-()]', '', meanStdev.names)

# Load all the test and train datasets into a single vector to prep for merging into a single dataframe
# Load in the training data
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")[meanStdev]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainData <- cbind(trainSubjects, trainActivities, trainData)

# Load in the testing data
testData <- read.table("UCI HAR Dataset/test/X_test.txt")[meanStdev]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
testData <- cbind(testSubjects, testActivities, testData)

# Merge the two datasets and add field names
mergedData <- rbind(trainData, testData)
colnames(mergedData) <- c("subject", "activity", meanStdev.names)

# Convert activities and subjects into factors
# This is to replace IDs with descriptive activity names (#3 in project reqs)
mergedData$activity <- factor(mergedData$activity, levels = activities[,1], labels = activities[,2])
mergedData$subject <- as.factor(mergedData$subject)

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
# Melt the final dataset to get one row for each subject/activiy
mergedData.melted <- melt(mergedData, id = c("subject", "activity"))
# Get mean for each subject/activity pair
mergedData.mean <- dcast(mergedData.melted, subject + activity ~ variable, mean)

# Output the final tidy file 
write.table(mergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)