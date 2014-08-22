# Coursera Course Assignment - Getting and Cleaning Data 
# run_analysis.R
#
# Depends on the reshape2 package
# If not available install it using following command:
# install.packages("reshape2")
#

library(reshape2)

# Read the train and test datasets
# inFileName is the name of zip file
# exDirName is the name of Directory unzip will extract the files
inFileName <- "getdata_projectfiles_UCI HAR Dataset.zip"
exDirName <- "data" 

# If data folder is not created then unzip will extract the zipfile into the exDirName folder
if (!file.exists(exDirName)){ 
  unzip(inFileName, exdir = exDirName)
}

# Read all required .txt files and  Load datasets
Subject.Test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
Subject.Train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")

X.Test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
X.Train <- read.table("data/UCI HAR Dataset/train/X_train.txt")

Y.Test <- read.table("data/UCI HAR Dataset/test/Y_test.txt")
Y.Train <- read.table("data/UCI HAR Dataset/train/Y_train.txt")

features <- read.table("data/UCI HAR Dataset/features.txt")
activity.Label <- read.table("data/UCI HAR Dataset/activity_labels.txt")
names(activity.Label)[2] <- "ActivityLabel"

# Merge the test and train feature data for X
X.Train_Test <- rbind(X.Train,X.Test)

# Assignment Requirement 4. Appropriately labels the data set with descriptive variable names.
# X.Train_Test contains 561 variables refering various features
# features contains name of all the 561 features, so we can use this to rename the column for 
# x.Train_Test.
# Refer To: \data\UCI HAR Dataset\Readme.Txt file.
names(X.Train_Test) <- as.character(features[, 2])

# Merge the test and train Label data for Y
Y.Train_Test <- rbind(Y.Train,Y.Test)
names(Y.Train_Test)[1] <- "ActivityLabelID"

# Merge the test and train data for Subject
Subject.Train_Test <- rbind(Subject.Train,Subject.Test)
names(Subject.Train_Test)[1] <- "Subject"


# Assignment Requirement 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Fetch all mean and sd column 
col_mean_std <- c(grep("mean()",colnames(X.Train_Test),fixed=TRUE),grep("std()",colnames(X.Train_Test),fixed=TRUE))
X.Train_Test_Mean_STD <- X.Train_Test[, col_mean_std]

# Assignment Requirement 3. Uses descriptive activity names to name the activities in the data set
Y.Train_Test_Activity <- merge(Y.Train_Test,activity.Label, by=1)

# Assignment Requirement 1. Merges the training and the test sets to create 1. one data set.
# Merge all previous datasets
# Subjects, Labels in Y, Feature Data in X(with Mean and STD column)
Data_Merged <- cbind(Subject.Train_Test, Y.Train_Test_Activity, X.Train_Test_Mean_STD)

# Assignment Requirement 5. Creates a second, independent tidy data set with the average of each variable for each activity and
# each subject.
# 1. Group
# Compute the means, grouped by activity/subject
Melt_Data = melt(Data_Merged, id.var = c("ActivityLabelID", "ActivityLabel", "Subject"))
Data_Average = dcast(Melt_Data , Subject + ActivityLabel ~ variable, mean)

write.table(Data_Average, file="TidyData_For_RunAnalysis.txt", sep=";", row.names=FALSE)

