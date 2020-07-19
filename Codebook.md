# Introduction
This codebook is for the "tidydata.txt" file in the "merged" folder. The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
Description of the data is available at the following link: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". The actual data is available 
at "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". The code in run_analysis.R transforms the data and gives "tidydata.txt" as output.

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
