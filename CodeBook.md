#CodeBook
  Coursera Course Assignment - Getting and Cleaning Data.
  This document is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data. 

## Purpose
  The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Description
  One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

  [Article](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Task Details

###Here are the data for the project:

  [DataSource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

###Tasks performed using run_analysis.R. 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

###Summary of Original Data
  Refer to README.txt file inside above data source for detailed description,
  Human Activity Recognition Using Smartphones Dataset Version 1.0

  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIR , SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

  The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

  For each record it is provided:
  ======================================

  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 
  - Its activity label. 
  - An identifier of the subject who carried out the experiment.

  The dataset includes the following files:
  =========================================

  - 'README.txt'
  - 'features_info.txt': Shows information about the variables used on the feature vector.
  - 'features.txt': List of all features.
  - 'activity_labels.txt': Links the class labels with their activity name.
  - 'train/X_train.txt': Training set.
  - 'train/y_train.txt': Training labels.
  - 'test/X_test.txt': Test set.
  - 'test/y_test.txt': Test labels.

  The following files are available for the train and test data. Their descriptions are equivalent. 
  
  - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
  - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
  - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
  - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
  
  Notes: 
  ======
  - Features are normalized and bounded within [-1,1].
  - Each feature vector is a row on the text file.
  
  For more information about this dataset contact: activityrecognition@smartlab.ws

###  Transformations
  **Input**: Read the raw file(getdata_projectfiles_UCI HAR Dataset.zip) assuming already present in working directory. 
  **Output**: Tidy Data File "TidyData_For_RunAnalysis.txt"
  
  **Output Variables**
  *For more information on features refer to features_info.txt that came with the original data*
  <TABLE border=1>
<TR> <TH>Variable Name</TH><TH></TH></TR>
<TR> <TD>Subject</TD><TD>The Subject</TD></TR>
<TR> <TD>ActivityLabel</TD><TD>The Activity Label</TD></TR>
<TR> <TD colspan="2">
**Feature List**

*Mean of Features with features name containing mean and std in the original data set.*
</TD><TR>
<TR> <TD>tBodyAcc-mean()-X</TD><TD></TD></TR>
<TR> <TD>tBodyAcc-mean()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyAcc-mean()-Z</TD><TD></TD></TR>
<TR> <TD>tGravityAcc-mean()-X</TD><TD></TD></TR>
<TR> <TD>tGravityAcc-mean()-Y</TD><TD></TD></TR>
<TR> <TD>tGravityAcc-mean()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerk-mean()-X</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerk-mean()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerk-mean()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyGyro-mean()-X</TD><TD></TD></TR>
<TR> <TD>tBodyGyro-mean()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyGyro-mean()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerk-mean()-X</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerk-mean()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerk-mean()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyAccMag-mean()</TD><TD></TD></TR>
<TR> <TD>tGravityAccMag-mean()</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerkMag-mean()</TD><TD></TD></TR>
<TR> <TD>tBodyGyroMag-mean()</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerkMag-mean()</TD><TD></TD></TR>
<TR> <TD>fBodyAcc-mean()-X</TD><TD></TD></TR>
<TR> <TD>fBodyAcc-mean()-Y</TD><TD></TD></TR>
<TR> <TD>fBodyAcc-mean()-Z</TD><TD></TD></TR>
<TR> <TD>fBodyAccJerk-mean()-X</TD><TD></TD></TR>
<TR> <TD>fBodyAccJerk-mean()-Y</TD><TD></TD></TR>
<TR> <TD>fBodyAccJerk-mean()-Z</TD><TD></TD></TR>
<TR> <TD>fBodyGyro-mean()-X</TD><TD></TD></TR>
<TR> <TD>fBodyGyro-mean()-Y</TD><TD></TD></TR>
<TR> <TD>fBodyGyro-mean()-Z</TD><TD></TD></TR>
<TR> <TD>fBodyAccMag-mean()</TD><TD></TD></TR>
<TR> <TD>fBodyBodyAccJerkMag-mean()</TD><TD></TD></TR>
<TR> <TD>fBodyBodyGyroMag-mean()</TD><TD></TD></TR>
<TR> <TD>fBodyBodyGyroJerkMag-mean()</TD><TD></TD></TR>
<TR> <TD>tBodyAcc-std()-X</TD><TD></TD></TR>
<TR> <TD>tBodyAcc-std()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyAcc-std()-Z</TD><TD></TD></TR>
<TR> <TD>tGravityAcc-std()-X</TD><TD></TD></TR>
<TR> <TD>tGravityAcc-std()-Y</TD><TD></TD></TR>
<TR> <TD>tGravityAcc-std()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerk-std()-X</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerk-std()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerk-std()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyGyro-std()-X</TD><TD></TD></TR>
<TR> <TD>tBodyGyro-std()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyGyro-std()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerk-std()-X</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerk-std()-Y</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerk-std()-Z</TD><TD></TD></TR>
<TR> <TD>tBodyAccMag-std()</TD><TD></TD></TR>
<TR> <TD>tGravityAccMag-std()</TD><TD></TD></TR>
<TR> <TD>tBodyAccJerkMag-std()</TD><TD></TD></TR>
<TR> <TD>tBodyGyroMag-std()</TD><TD></TD></TR>
<TR> <TD>tBodyGyroJerkMag-std()</TD><TD></TD></TR>
<TR> <TD>fBodyAcc-std()-X</TD><TD></TD></TR>
<TR> <TD>fBodyAcc-std()-Y</TD><TD></TD></TR>
<TR> <TD>fBodyAcc-std()-Z</TD><TD></TD></TR>
<TR> <TD>fBodyAccJerk-std()-X</TD><TD></TD></TR>
<TR> <TD>fBodyAccJerk-std()-Y</TD><TD></TD></TR>
<TR> <TD>fBodyAccJerk-std()-Z</TD><TD></TD></TR>
<TR> <TD>fBodyGyro-std()-X</TD><TD></TD></TR>
<TR> <TD>fBodyGyro-std()-Y</TD><TD></TD></TR>
<TR> <TD>fBodyGyro-std()-Z</TD><TD></TD></TR>
<TR> <TD>fBodyAccMag-std()</TD><TD></TD></TR>
<TR> <TD>fBodyBodyAccJerkMag-std()</TD><TD></TD></TR>
<TR> <TD>fBodyBodyGyroMag-std()</TD><TD></TD></TR>
<TR> <TD>fBodyBodyGyroJerkMag-std()</TD><TD></TD></TR>
</TABLE>


**Steps for Transformation**

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

##End of Code Book
  

