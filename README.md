Human Activity Recognition Using Smartphones - Tidy Data Project
This repository contains the R script and documentation for cleaning and organizing the Human Activity Recognition (HAR) dataset, originally obtained from the UCI Machine Learning Repository.

Files in this Repository
run_analysis.R: The R script that performs data cleaning, transformation, and outputs the final tidy dataset.
CodeBook.md: Describes the variables, data transformations, and details about the final tidy dataset.
README.md: Provides an overview of the project and instructions on how to use the script.
How to Run the Analysis
Install Required Packages: The dplyr package is required to run the script. Install it with:
install.packages("dplyr")
Run the Script:

Download the dataset from the course website and unzip it to your working directory.
Run run_analysis.R. The script will load, clean, and tidy the data, producing a file named tidy_data.txt in your working directory.
Output:
tidy_data.txt: Contains the tidy dataset with the average of each variable for each activity and each subject.
Project Summary
The goal of this project is to process and clean the data collected from the Samsung Galaxy S smartphone’s accelerometer and gyroscope sensors to produce a tidy dataset suitable for analysis. The steps include:

Merging training and test data.
Extracting measurements of mean and standard deviation.
Applying descriptive activity names.
Labeling the dataset with descriptive variable names.
Calculating averages for each variable by activity and subject to create a final tidy dataset.
For more information on variables and transformations, refer to CodeBook.md.
