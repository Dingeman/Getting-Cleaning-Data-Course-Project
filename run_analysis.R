## Working directory should be set to root folder of data set before running this script

library(dplyr)

##1. load training set data
train_data <- read.fwf("train/X_train.txt", rep(16, 512))
train_act <- read.table("train/y_train.txt")
train_subj <- read.table("train/subject_train.txt")

##1. load test set data
test_data <- read.fwf("test/X_test.txt", rep(16, 512))
test_act <- read.table("test/y_test.txt")
test_subj <- read.table("test/subject_test.txt")

##2. merge measurements with activity data
train_data <- cbind(train_data, train_act, train_subj)
test_data <- cbind(test_data, test_act, test_subj)
##2. merge training and test set
meas_data <- rbind(train_data, test_data)

##free up memory
rm(train_data)
rm(train_act)
rm(train_subj)
rm(test_data)
rm(test_act)
rm(test_subj)

##3. load features.txt, containing the variable names
var_names <- read.table("features.txt")
var_names[, 2] <- as.character(var_names[, 2])
var_names[513, 2] <- "activity"
var_names[514, 2] <- "subject"
var_names <- var_names[1:514, ]

##4. get mean and std variables
var_index <- grep("mean|std|activity|subject", var_names[,2])

##4.  select mean and standard deviation variables
meas_data <- cbind(meas_data[, var_index])

##5. give columns descriptive names: use variable names from features.txt
colnames(meas_data) <- var_names[var_index, 2]

##6. give activity values descriptive name
for (i in seq_along(meas_data$activity))
{
    if(meas_data[i, "activity"] == 1)
        {meas_data[i, "activity"] <- "Walking"}
    else if(meas_data[i, "activity"] == 2)
        {meas_data[i, "activity"] <- "Walking_Upstairs"}
    else if(meas_data[i, "activity"] == 3)
        {meas_data[i, "activity"] <- "Walking_Downstairs"}
    else if(meas_data[i, "activity"] == 4)
        {meas_data[i, "activity"] <- "Sitting"}
    else if(meas_data[i, "activity"] == 5)
        {meas_data[i, "activity"] <- "Standing"}
    else if(meas_data[i, "activity"] == 6)
        {meas_data[i, "activity"] <- "Laying"}
}
##6. convert $activity column to factor
meas_data$activity <- as.factor(meas_data$activity)

##7. create data set with average of each variable grouped by activity and subject
meas_data_average <- meas_data %>% group_by(activity, subject) %>% summarise_all(mean)