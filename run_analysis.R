## Instructions for submission:
##Please upload the tidy data set created in step 5 of the instructions. 
## Please upload your data set as a txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).
##----------------------------------------------------------------------------------------
## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#install necessary packages/read data
if (!require("data.table")) {
  install.packages("data.table")}
if (!require("reshape2")) {
  install.packages("reshape2")}
require("data.table")
require("reshape2")

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2] #activity labels
features <- read.table("./UCI HAR Dataset/features.txt")[,2] # data column names
extract_features <- grepl("mean|std", features) #extract mean and S.D. for each measurement
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt") #load and process X_test
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt") #load and process Y_test

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(X_test) = features

X_test = X_test[,extract_features] #extract mean and S.D. for each measurement
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label") #activity labels
names(subject_test) = "subject"

test_data <- cbind(as.data.table(subject_test), y_test, X_test) #bind data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt") #load and process X_train
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt") #load and process Y_train

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(X_train) = features
 
X_train = X_train[,extract_features] #extract mean and S.D. for each measurement
y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label") #activity data
names(subject_train) = "subject"

train_data <- cbind(as.data.table(subject_train), y_train, X_train) #bind data
data = rbind(test_data, train_data) #merge test data and train data into one set

id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data      = melt(data, id = id_labels, measure.vars = data_labels)
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean) #use dcast to implement mean function to set of data

write.table(tidy_data, file = "./tidy_data.txt") #write_table for tidy_data.txt to complete program requirements
