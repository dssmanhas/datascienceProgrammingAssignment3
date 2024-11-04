# Load necessary libraries
library(dplyr)

# Step 1: Download and unzip the data if not already done
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("UCI HAR Dataset")) {
  download.file(url, destfile = "Dataset.zip", method = "curl")
  unzip("Dataset.zip")
}

# Step 2: Load the data files
# Read in training data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read in test data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Read in features and activity labels
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

# Step 3: Merge the training and test data sets to create one data set
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Step 4: Extract measurements on the mean and standard deviation for each measurement
# Identify columns with mean() or std() in their names
mean_std_features <- grepl("-(mean|std)\\(\\)", features$feature)
x_data <- x_data[, mean_std_features]
names(x_data) <- features$feature[mean_std_features]

# Step 5: Use descriptive activity names to name the activities in the data set
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

# Step 6: Appropriately label the data set with descriptive variable names
names(subject_data) <- "subject"
all_data <- cbind(subject_data, y_data, x_data)

# Step 7: Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- all_data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Write the tidy data set to a file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)
