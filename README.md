# GettingandCleaningDataProject
Coursera Final project Course 3, Getting and Cleaning Data Project

This project aims to prepare tidy data that can be used for analysis. 
The three components of the project include:

1) a tidy data set

2) a link to a Github repository with your script for performing the analysis

3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

The data used can be found at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

More background on the data can be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

run_analysis.R is created as an R script that does the following tasks:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To complete the project:

1. Download the data into a new folder on your local drive. 

2. Put run_analysis.R in the parent folder of UCI HAR Dataset, then set it as your working directory using setwd() function in RStudio.

3. Run source "run_analysis.R"--> it will create a new file tiny_data.txt in the working directory.
