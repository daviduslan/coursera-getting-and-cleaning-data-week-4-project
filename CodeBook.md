# Code Book for Getting and Cleaning Data Course Project

This is the code book that describes the variables, the data, and any transformations or work performed to clean up the data.

# Source Data
A full description of the original data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

[Here is the source data used](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) prior to the transformations described in the next sections.

Visit the links above for information about the original data set and attributes. This codebook will focus on any transformations done.

# Transformations Done on Source Data

Source data files:
- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt

## Steps taken to transform data
1. Load activity labels and features for manipulation
2. Create vector to allow for extracting only the data on mean and standard deviation and to clean up the variable names 
3. Load all the test and train datasets into a single vector to prep for merging into a single dataframe
4. Merge the two datasets and add field names, apply vector from step 2 to only get mean/stdev data
5. Convert activities and subjects into factors
* This is to replace IDs with descriptive activity names
6. Create a second, independent tidy data set with the average of each variable for each activity and each subject: "tidy.txt"

# Summary of Data in tidy.txt
This section lists and describes the data available in the final output file: tidy.txt.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Activity Labels

* `WALKING` (1): subject was walking during the test
* `WALKING_UPSTAIRS` (2): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (3): subject was walking down a staircase during the test
* `SITTING` (4): subject was sitting during the test
* `STANDING` (5): subject was standing during the test
* `LAYING` (6): subject was laying down during the test

## Measurements
These are the final resulting column names. For more info on each measurement, please refer to the Source Data section above and see details on the original data. 

* tBodyAccMeanX - Mean linear acceleration in the X direciton (g)
* tBodyAccMeanY - Mean linear acceleration in the Y direction (g)
* tBodyAccMeanZ - Mean linear acceleration in the Z direction (g)
* tBodyAccStdX - Standard deviation of acceleration in the X diretion (g)
* tBodyAccStdY - Standard deviation of acceleration in the Y diretion (g)
* tBodyAccStdZ - Standard deviation of acceleration in the Z diretion (g)
* tGravityAccMeanX - Gravity acceleration mean (g), X
* tGravityAccMeanY - Gravity acceleration mean (g), Y
* tGravityAccMeanZ - Gravity acceleration mean (g), Z
* tGravityAccStdX - Gravity acceleration standard deviation (g), X
* tGravityAccStdY - Gravity acceleration standard deviation (g), Y
* tGravityAccStdZ - Gravity acceleration standard deviation (g), Z
* tBodyAccJerkMeanX - Jerk is derived from the Acceleration (g/s), X
* tBodyAccJerkMeanY - Jerk is derived from the Acceleration (g/s), Y
* tBodyAccJerkMeanZ - Jerk is derived from the Acceleration (g/s), Z
* tBodyAccJerkStdX - Jerk is derived from the Acceleration (g/s), X
* tBodyAccJerkStdY - Jerk is derived from the Acceleration (g/s), Y
* tBodyAccJerkStdZ - Jerk is derived from the Acceleration (g/s), Z
* tBodyGyroMeanX - The calculated mean gyro speed (radians/s), X
* tBodyGyroMeanY - The calculated mean gyro speed (radians/s), Y
* tBodyGyroMeanZ - The calculated mean gyro speed (radians/s), Z
* tBodyGyroStdX - The standard deviation of gyro speed (radians/s), X
* tBodyGyroStdY - The standard deviation of gyro speed (radians/s), Y
* tBodyGyroStdZ - The standard deviation of gyro speed (radians/s), Z
* tBodyGyroJerkMeanX - Gyro jerk is derived from gyro acc (radians/s), X
* tBodyGyroJerkMeanY - Gyro jerk is derived from gyro acc (radians/s), Y
* tBodyGyroJerkMeanZ - Gyro jerk is derived from gyro acc (radians/s), Z
* tBodyGyroJerkStdX - Gyro jerk is derived from gyro acc (radians/s), X
* tBodyGyroJerkStdY - Gyro jerk is derived from gyro acc (radians/s), Y
* tBodyGyroJerkStdZ - Gyro jerk is derived from gyro acc (radians/s), Z
* tBodyAccMagMean - Mean magnitude of acceleration derived from X/Y/Z (g)
* tBodyAccMagStd- Standard deviation of acceleration derived from X/Y/Z (g)
* tGravityAccMagMean - Mean magnitude of acceleration derived from X/Y/Z (g)
* tGravityAccMagStd- Standard deviation of acceleration derived from X/Y/Z (g)
* tBodyAccJerkMagMean - Mean directionless jerk (g/s)
* tBodyAccJerkMagStd - Std. dev. of directionless jerk (g/s)
* tBodyGyroMagMean - Gyro mean magnitude (radians/sec)
* tBodyGyroMagStd - Gyro standard deviation (radians/sec)
* tBodyGyroJerkMagMean - Jerk magnitude = derivative of accel (g)
* tBodyGyroJerkMagStd- Jerk magnitude = derivative of accel (g)
* fBodyAccMeanX - Frequency domain acceleration (g), direction X
* fBodyAccMeanY - Frequency domain acceleration (g), direction Y
* fBodyAccMeanZ - Frequency domain acceleration (g), direction Z
* fBodyAccStdX - Frequency domain standard deviation (g), direction X
* fBodyAccStdY - Frequency domain standard deviation (g), direction Y
* fBodyAccStdZ - Frequency domain standard deviation (g), direction Z
* fBodyAccJerkMeanX - Frequency domain jerk mean (g/s), direction X
* fBodyAccJerkMeanY - Frequency domain jerk mean (g/s), direction Y
* fBodyAccJerkMeanZ - Frequency domain jerk mean (g/s), direction Z
* fBodyAccJerkStdX - Frequency domain jerk standard deviation (g/s), direction X
* fBodyAccJerkStdY - Frequency domain jerk standard deviation (g/s), direction Y
* fBodyAccJerkStdZ - Frequency domain jerk standard deviation (g/s), direction Z
* fBodyGyroMeanX - Frequency domain gyro mean (radians/s), direction X
* fBodyGyroMeanY - Frequency domain gyro mean (radians/s), direction Y
* fBodyGyroMeanZ - Frequency domain gyro mean (radians/s), direction Z
* fBodyGyroStdX - Frequency domain gyro standard deviation (radians/s), direction X
* fBodyGyroStdY - Frequency domain gyro standard deviation (radians/s), direction Y
* fBodyGyroStdZ - Frequency domain gyro standard deviation (radians/s), direction Z
* fBodyAccMagMean - Frequency domain mean acceleration magnitude (g)
* fBodyAccMagStd - Frequency domain standard deviation acceleration magnitude (g)
* fBodyBodyAccJerkMagMean - Frequency domain acceleration jerk mean (g/s)
* fBodyBodyAccJerkMagStd - Frequency domain acceleration jerk standard deviation (g/s)
* fBodyBodyGyroMagMean - Frequency domain gyro magnitude mean (radians/s)
* fBodyBodyGyroMagStd - Frequency domain gryo magnitude standard deviation (radians/s)
* fBodyBodyGyroJerkMagMean - Frequency domain gryo jerk (radians/s^2) mean
* fBodyBodyGyroJerkMagStd - Frequency domain gyro standard deviation of jerk (radians/s^2)* 
