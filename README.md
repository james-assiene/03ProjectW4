# 03ProjectW4
Code repository for "Getting  and Cleaning Data" last project

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

