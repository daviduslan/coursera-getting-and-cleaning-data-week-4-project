# Getting and Cleaning Data Course Project
David Uslan
March 2017

This is the final project for the coursera course "Getting and Cleaning Data". Per the assignment instructions, the file run_analysis.R does the following when run locally:

1. Downloads the required files if they don't already exist in the working directory
2. Loads activity labels and features for manipulation
3. Loads the training and test datasets, but only columns that contain a mean or standard deviation. It also cleans the variable names up here
4. Loads the activity and subject data for each dataset 
5. Merges those two datasets into one
6. Converts the activity and subject columns into factors to allow for adding descriptive activity names and final step transformation
7. Creates a final dataset with the mean of each subject/activity pair

The final dataset is called "tidy.txt" 
