Code Book

This file uses the UCI HAR dataset available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones (University of California Irvine Human Activity Recognition) which are tracking accelerometer data collected from smartphones while test subjects performed various activities.

The data is provided in separate files and in two folders. There is both a 'test' and 'train' folder with data used to train an algorithm and one to test the predictions made. This analysis will combine the two sets as we are not performing any computer-directed learning on them.

Data Source

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In the data set, there is a file activity_labels.txt which translates the numeric activity designations into the 6 activities performed. The numeric activities are stored in the y_*.txt files and range from integers 1 to 6, inclusive.

The subject_*.txt files in the test and train directories associate the number of the subject being recorded, so there are multiple data readings for combinations of subject and activity.

The X_*.txt files contain the actual sensor readings and are described by the features_info.txt in the main directory of the data set.

run_analysis.R does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The dataset includes the following files:

'README.txt'

'features_info.txt': Variable information 

'features.txt': All features listed

'activity_labels.txt': Connects labels with activity

'train/X_train.txt': Set of training

'train/y_train.txt': Labels for training

'test/X_test.txt': Set for Test.

'test/y_test.txt': Labels for Test.
