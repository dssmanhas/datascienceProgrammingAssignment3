Code Book
This code book describes the dataset and transformations applied to the raw data from the Human Activity Recognition (HAR) project, obtained from the accelerometers of the Samsung Galaxy S smartphone.

Source Data
The original data is provided by the UCI Machine Learning Repository:

Source: Human Activity Recognition Using Smartphones Data Set
Variables
Raw Data Files
features.txt: List of all features (561 features).
activity_labels.txt: Links the activity code with descriptive activity names.
train/X_train.txt: Training set.
train/y_train.txt: Training labels (activity codes).
train/subject_train.txt: Subjects for training data (each individual is identified by an ID).
test/X_test.txt: Test set.
test/y_test.txt: Test labels (activity codes).
test/subject_test.txt: Subjects for test data.
Variables in the Final Tidy Dataset
After cleaning and organizing, the final dataset includes the following variables:

subject: An integer identifier for each subject in the study.
activity: A factor indicating the activity performed (e.g., "WALKING," "SITTING").
Measurement Variables: Each variable represents the mean or standard deviation of measurements from the smartphone’s accelerometer and gyroscope sensors. Only variables containing "mean()" or "std()" in the original dataset are retained, giving us 66 measurement variables.
Transformations and Cleaning Steps
Merging Data: Training and test datasets are combined to create a single dataset.
Extracting Mean and Standard Deviation Measurements: Only columns with "mean()" or "std()" in their names are selected.
Labeling Activities: Activity codes are replaced with descriptive activity names for clarity.
Descriptive Variable Names: Variable names are cleaned to remove special characters, ensuring readability.
Creating a Tidy Dataset: The data is grouped by subject and activity, and the mean of each variable is calculated to produce a final tidy dataset where each row is unique to a combination of subject and activity.
