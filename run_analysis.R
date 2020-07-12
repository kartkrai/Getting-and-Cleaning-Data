

train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")            # read train data
train_y <- read.table("./UCI HAR Dataset/train/Y_train.txt")            # read train data
train_s <- read.table("./UCI HAR Dataset/train/subject_train.txt")      # read train data

test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")               # read test data
test_y <- read.table("./UCI HAR Dataset/test/Y_test.txt")               # read test data
test_s <- read.table("./UCI HAR Dataset/test/subject_test.txt")         # read test data

variables <- read.table("./UCI HAR Dataset/features.txt")               # read variable's description
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")         # read activities

colnames(test_x)<- variables[,2]                                        # Change column heading names
colnames(test_y)<- "activity"                                           # Change column heading names
colnames(test_s)<- "subject"                                            # Change column heading names

merged_x <- rbind(train_x,test_x)                                       # merging data
merged_y <- rbind(train_y,test_y)                                       # merging data
merged_s <- rbind(train_s,test_s)                                       # merging data

sel_features <- variables[grep(".*mean\\(\\)|std\\(\\)", variables[,2], ignore.case = FALSE),]    #Extracting measurements on the mean and standard deviation for each measurement.
merged_x <- merged_x[,sel_features[,1]]                                                           #Extracting measurements on the mean and standard deviation for each measurement.

merged<- cbind(merged_x,merged_y,merged_s)                                                        # merging all datasets

merged$activityId <- factor(merged$activityId, levels = activity[,1], labels = activity[,2])      #Adjusting Activity column
merged$subjectId <- as.factor(merged$subjectId)                                                   #Adjusting Subject column

mean_merged<- merged %>% group_by(activityId,subjectId) %>% summarise_all(funs(mean))             #Creating tidy dataset

write.table(mean_merged, file = "./merged/tidydata.txt", row.names = FALSE, col.names = TRUE)     #Exporting the dataset