features_df = read.csv("UCI HAR Dataset/features.txt", header = FALSE, sep = " ", col.names = c("id", "feature_name"))
labels_df = read.csv("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ", col.names = c("id", "label_name"))


feature_names = features_df$feature_name
mean_features = grep("mean", feature_names)
std_features = grep("std", feature_names)

subject_train = read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c("subject_id"))
X_train = read.table("UCI HAR Dataset/train/X_train.txt", col.names = feature_names)
X_train = X_train[,c(mean_features, std_features)]
X_train = cbind(subject_train, X_train)
y_train = read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")
y_train$activity = sapply(y_train$activity, function(elt) labels_df[,"label_name"][elt])
train = cbind(X_train, y_train)

subject_test = read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c("subject_id"))
X_test = read.table("UCI HAR Dataset/test/X_test.txt", col.names = feature_names)
X_test = X_test[,c(mean_features, std_features)]
X_test = cbind(subject_test, X_test)
y_test = read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
y_test$activity = sapply(y_test$activity, function(elt) labels_df[,"label_name"][elt])
test = cbind(X_test, y_test)


X = rbind(X_train, X_test)
y = rbind(y_train, y_test)

one = rbind(train, test)

library(dplyr)

df = one

ss = group_by(df, subject_id, activity)
final = summarize_all(ss, mean)


