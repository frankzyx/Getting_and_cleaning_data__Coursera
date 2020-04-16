##############################################################
# Getting and Cleaning Data Course 
# Final Programming Assignment
##############################################################
library(dplyr)
library(tidyr)

# 1. Read in traing and test sets
# feature names (note: remove "meanFreq")
feat_names <- read.table('./UCI HAR Dataset/features.txt', col.names = c('Number', 'Features'))
use_cols <- grepl('(mean|std)\\(', feat_names$Features)

train <- read.table('./UCI HAR Dataset/train/X_train.txt', col.names = feat_names$Features)
test <- read.table('./UCI HAR Dataset/test/X_test.txt', col.names = feat_names$Features)

# 2. Extract mean/std variables and merge them
train <- train[, use_cols]
test <- test[, use_cols]
df <- rbind(train, test)

# 3a. label column
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', colClasses = c('numeric', 'character'))
train_label <- read.table('./UCI HAR Dataset/train/y_train.txt')
test_label <- read.table('./UCI HAR Dataset/test/y_test.txt')
combined_label <- rbind(train_label, test_label)
combined_label <- merge(combined_label, activity_labels, by = 'V1')
df$activity <- combined_label$V2

# 3b. subject column
train_subjects <- read.table('./UCI HAR Dataset/train/subject_train.txt')
test_subjects <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subjects <- rbind(train_subjects, test_subjects)
df$subject <- subjects$V1


# 4. Change name of columns
tmp <- gsub('^t', 'Time.', names(df))
tmp <- gsub('^f', 'Freq.', tmp)
tmp <- gsub('Acc', '.Accelerometer', tmp)
tmp <- gsub('Gyro', '.Gyroscope', tmp)
names(df) <- gsub('Mag', '.Magnitude', tmp)

# 5. Tidy data
tidy_data <- df %>% 
    group_by(activity, subject) %>%
    summarize_all(mean)
