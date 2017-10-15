#Description of the original experiment

The original experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

#Features list
The  dataset contains the following features
"1","subject_id" : the subject (volunteer) id
"2","activity" : the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

For each original features that measured the mean or the standard deviation of a sensor measure,
the following features represent the mean and the standard deviation for each volunteer and for
each activity:

"3","tBodyAcc.mean...X"
"4","tBodyAcc.mean...Y"
"5","tBodyAcc.mean...Z"
"6","tGravityAcc.mean...X"
"7","tGravityAcc.mean...Y"
"8","tGravityAcc.mean...Z"
"9","tBodyAccJerk.mean...X"
"10","tBodyAccJerk.mean...Y"
"11","tBodyAccJerk.mean...Z"
"12","tBodyGyro.mean...X"
"13","tBodyGyro.mean...Y"
"14","tBodyGyro.mean...Z"
"15","tBodyGyroJerk.mean...X"
"16","tBodyGyroJerk.mean...Y"
"17","tBodyGyroJerk.mean...Z"
"18","tBodyAccMag.mean.."
"19","tGravityAccMag.mean.."
"20","tBodyAccJerkMag.mean.."
"21","tBodyGyroMag.mean.."
"22","tBodyGyroJerkMag.mean.."
"23","fBodyAcc.mean...X"
"24","fBodyAcc.mean...Y"
"25","fBodyAcc.mean...Z"
"26","fBodyAcc.meanFreq...X"
"27","fBodyAcc.meanFreq...Y"
"28","fBodyAcc.meanFreq...Z"
"29","fBodyAccJerk.mean...X"
"30","fBodyAccJerk.mean...Y"
"31","fBodyAccJerk.mean...Z"
"32","fBodyAccJerk.meanFreq...X"
"33","fBodyAccJerk.meanFreq...Y"
"34","fBodyAccJerk.meanFreq...Z"
"35","fBodyGyro.mean...X"
"36","fBodyGyro.mean...Y"
"37","fBodyGyro.mean...Z"
"38","fBodyGyro.meanFreq...X"
"39","fBodyGyro.meanFreq...Y"
"40","fBodyGyro.meanFreq...Z"
"41","fBodyAccMag.mean.."
"42","fBodyAccMag.meanFreq.."
"43","fBodyBodyAccJerkMag.mean.."
"44","fBodyBodyAccJerkMag.meanFreq.."
"45","fBodyBodyGyroMag.mean.."
"46","fBodyBodyGyroMag.meanFreq.."
"47","fBodyBodyGyroJerkMag.mean.."
"48","fBodyBodyGyroJerkMag.meanFreq.."
"49","tBodyAcc.std...X"
"50","tBodyAcc.std...Y"
"51","tBodyAcc.std...Z"
"52","tGravityAcc.std...X"
"53","tGravityAcc.std...Y"
"54","tGravityAcc.std...Z"
"55","tBodyAccJerk.std...X"
"56","tBodyAccJerk.std...Y"
"57","tBodyAccJerk.std...Z"
"58","tBodyGyro.std...X"
"59","tBodyGyro.std...Y"
"60","tBodyGyro.std...Z"
"61","tBodyGyroJerk.std...X"
"62","tBodyGyroJerk.std...Y"
"63","tBodyGyroJerk.std...Z"
"64","tBodyAccMag.std.."
"65","tGravityAccMag.std.."
"66","tBodyAccJerkMag.std.."
"67","tBodyGyroMag.std.."
"68","tBodyGyroJerkMag.std.."
"69","fBodyAcc.std...X"
"70","fBodyAcc.std...Y"
"71","fBodyAcc.std...Z"
"72","fBodyAccJerk.std...X"
"73","fBodyAccJerk.std...Y"
"74","fBodyAccJerk.std...Z"
"75","fBodyGyro.std...X"
"76","fBodyGyro.std...Y"
"77","fBodyGyro.std...Z"
"78","fBodyAccMag.std.."
"79","fBodyBodyAccJerkMag.std.."
"80","fBodyBodyGyroMag.std.."
"81","fBodyBodyGyroJerkMag.std.."

#Transformations made

In order to obtain the tidy dataset, we made the following transformation to the original data:
1) We retrieved features' names from "features.txt" and activity labels from "activity_labels.txt"
2) We retrieved the subjects' ids from "train/subject_train.txt" and "test/X_test.txt"
3) We loaded train and tests datasets using columns names from the first step
4) From the previous datasets, we selected the columns that have "mean" or "std" in their names
5) We merged the previous datasets with the corresponding subjects' ids (using cbind function)
6) We merged the previous datasets with their corresponding "y" (activity) datasets
7) We merged train and tests datasets
8) Using "group_by" and "summarize_all" functions from dplyr package, we grouped the observations by "subject_id" and "activity" and summarize these group by their means

