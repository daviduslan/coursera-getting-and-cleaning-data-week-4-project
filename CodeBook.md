# Code Book for Getting and Cleaning Data Course Project

This is the code book that describes the variables, the data, and any transformations or work performed to clean up the data.

# Source Data
A full description of the original data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

[Here is the source data used](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) prior to the transformations described in the next sections.

Visit the links above for information about the original data set and attributes. This codebook will focus on any transformations done.

# Transformations Done on Source Data
## Read source data in and merge

Source data files:
- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt

1. Load activity labels and features for manipulation
2. Extract only the data on mean and standard deviation and clean up the variable names 
3. Load all the test and train datasets into a single vector to prep for merging into a single dataframe
4. Merge the two datasets and add field names
5. Convert activities and subjects into factors
* This is to replace IDs with descriptive activity names
6. Create a second, independent tidy data set with the average of each variable for each activity and each subject
