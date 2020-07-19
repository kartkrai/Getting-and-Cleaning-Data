# Introduction
This codebook is for the "tidydata.txt" file in the "merged" folder. The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. Description of the data is available at the following link: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". The actual data is available at "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". The code in run_analysis.R transforms the data and gives "tidydata.txt" as output.

# What the code does
Following are the steps the code follows to tranform the data in run_analysis.R (also marked as comments in the original code)
- Reading train and test folder data as tables
- Reading variable's description
- Reading activities
- Changing column heading names with the actual names as given in variable description file
- Merging the data read from train and test folders
- Extracting measurements on the mean and standard deviation for each measurement
- Merging all datasets
- Adjusting Activity column as "activityname" column
- Adjusting Subject column as "subject" column
- Creating tidy dataset
- Exporting the dataset as "tidydata.txt" file in the "merged" folder

# Variables
Following is the list of variables used and exported by "run_analysis.R" to "tidydata.txt":-
- activityId 

- subjectId 

- tBodyAcc-mean -X 
- tBodyAcc-mean -Y 
- tBodyAcc-mean -Z 
- tBodyAcc-std -X 
- tBodyAcc-std -Y 
- tBodyAcc-std -Z 

- tGravityAcc-mean -X 
- tGravityAcc-mean -Y 
- tGravityAcc-mean -Z 
- tGravityAcc-std -X 
- tGravityAcc-std -Y 
- tGravityAcc-std -Z 

- tBodyAccJerk-mean -X 
- tBodyAccJerk-mean -Y 
- tBodyAccJerk-mean -Z 
- tBodyAccJerk-std -X 
- tBodyAccJerk-std -Y 
- tBodyAccJerk-std -Z 

- tBodyGyro-mean -X 
- tBodyGyro-mean -Y 
- tBodyGyro-mean -Z 
- tBodyGyro-std -X 
- tBodyGyro-std -Y 
- tBodyGyro-std -Z 

- tBodyGyroJerk-mean -X 
- tBodyGyroJerk-mean -Y 
- tBodyGyroJerk-mean -Z 
- tBodyGyroJerk-std -X 
- tBodyGyroJerk-std -Y 
- tBodyGyroJerk-std -Z 

- tBodyAccMag-mean 
- tBodyAccMag-std 

- tGravityAccMag-mean 
- tGravityAccMag-std 

- tBodyAccJerkMag-mean 
- tBodyAccJerkMag-std 

- tBodyGyroMag-mean 
- tBodyGyroMag-std 

- tBodyGyroJerkMag-mean 
- tBodyGyroJerkMag-std 

- fBodyAcc-mean -X 
- fBodyAcc-mean -Y 
- fBodyAcc-mean -Z 
- fBodyAcc-std -X 
- fBodyAcc-std -Y 
- fBodyAcc-std -Z 

- fBodyAccJerk-mean -X
- fBodyAccJerk-mean -Y 
- fBodyAccJerk-mean -Z 
- fBodyAccJerk-std -X 
- fBodyAccJerk-std -Y 
- fBodyAccJerk-std -Z 

- fBodyGyro-mean -X 
- fBodyGyro-mean -Y 
- fBodyGyro-mean -Z 
- fBodyGyro-std -X 
- fBodyGyro-std -Y 
- fBodyGyro-std -Z 

- fBodyAccMag-mean 
- fBodyAccMag-std 

- fBodyBodyAccJerkMag-mean 
- fBodyBodyAccJerkMag-std 

- fBodyBodyGyroMag-mean 
- fBodyBodyGyroMag-std 

- fBodyBodyGyroJerkMag-mean 
- fBodyBodyGyroJerkMag-std 
