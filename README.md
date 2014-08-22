#README.md
==============
Coursera Assignment Getting and Cleaning Data(getdata-006)

# run_analyis.R
===========================================

This file explains how the scripts of this repo work.

The R script `run_analysis.R` reads downloaded data and process the required data. Then, it creates and saves the following dataset:

- "TidyData_For_RunAnalysis.txt" : Merge the original data and average of various features.


====================
## Original Dataset

DataSet Source: [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

***Above file is downloaded into the repository***

====================
## Dependencies

`run_analysis.R` depends on `reshape2` library.

====================
## Code Summary


  1.  Read and unzip the file "getdata_projectfiles_UCI HAR Dataset.zip" into the "data" sub directory.
  2.  Read following files into seperate Data Tables:
    - subject_test.txt
    - subject_train.txt
    - X_test.txt
    - X_train.txt
    - Y_test.txt
    - Y_train.txt
    - features.txt
    - activity_labels.txt
  3. Row Bind all the *_test and *_train data into single datatable
    Ex. subject_train and subject_test into subject.Train_Test , similarly for X and Y.
  4. Rename X.Train_Test column names with data recieve in features datatable.
  5. Also subset X.Train_Test to contain column name having "mean" and "std" into new data table X.Train_Test_Mean_STD 
  6. Merge Y.Train_Test with activity lables to us the Activity Label names instead of Activity ID in Y.Train_Test.
  7. Merge X.X.Train_Test_Mean_STD, Y.X.Train_Test and Subject.X.Train_Test in to Intermediate Data Table Data_Merged
  8. Create new datatable Data_Average by grouping them into Subject/Activity and taking average of each feature variable.
  9. Save the Data_Average Data Table into "TidyData_For_RunAnalysis.txt".
