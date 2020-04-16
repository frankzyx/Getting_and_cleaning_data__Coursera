# Getting_and_cleaning_data__Coursera
Final project of week 4

This repo contains the final project of Coursera "Getting and Cleaning data" course in Data Science specialization.
Data source can be downloaded from UCI ML Repository https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The files are the following:
1. run_analysis.R: The main R script that runs the analysis.
2. tidy_data.csv: The output csv file that summarizes the average of each variable by each activity and each subject.


Detailed analysis:
1. Train and test sets are read in along with activity labels and subjects.
2. Extract only the mean and std variables from the feature columns, and combine train/test together.
3. Append the activity labels and subjects to the above dataframe.
4. Use regular expression to change the names for easier understanding.
5. Use dplyr to group by activity and subject, and summarize the mean of all columns.
