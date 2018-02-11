---
title: "CodeBook"
author: "D Knaap"
date: "11 februari 2018"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This data set is derived from:

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Data dictionary meas_data
=========================

'data.frame':	10299 obs. of  71 variables:
tBodyAcc-mean()-X        : num
tBodyAcc-mean()-Y        : num
tBodyAcc-mean()-Z        : num
tBodyAcc-std()-X         : num
tBodyAcc-std()-Y         : num
tBodyAcc-std()-Z         : num
tGravityAcc-mean()-X     : num
tGravityAcc-mean()-Y     : num
tGravityAcc-mean()-Z     : num
tGravityAcc-std()-X      : num
tGravityAcc-std()-Y      : num
tGravityAcc-std()-Z      : num
tBodyAccJerk-mean()-X    : num
tBodyAccJerk-mean()-Y    : num
tBodyAccJerk-mean()-Z    : num
tBodyAccJerk-std()-X     : num
tBodyAccJerk-std()-Y     : num
tBodyAccJerk-std()-Z     : num
tBodyGyro-mean()-X       : num
tBodyGyro-mean()-Y       : num
tBodyGyro-mean()-Z       : num
tBodyGyro-std()-X        : num
tBodyGyro-std()-Y        : num
tBodyGyro-std()-Z        : num
tBodyGyroJerk-mean()-X   : num
tBodyGyroJerk-mean()-Y   : num
tBodyGyroJerk-mean()-Z   : num
tBodyGyroJerk-std()-X    : num
tBodyGyroJerk-std()-Y    : num
tBodyGyroJerk-std()-Z    : num
tBodyAccMag-mean()       : num
tBodyAccMag-std()        : num
tGravityAccMag-mean()    : num
tGravityAccMag-std()     : num
tBodyAccJerkMag-mean()   : num
tBodyAccJerkMag-std()    : num
tBodyGyroMag-mean()      : num
tBodyGyroMag-std()       : num
tBodyGyroJerkMag-mean()  : num
tBodyGyroJerkMag-std()   : num
fBodyAcc-mean()-X        : num
fBodyAcc-mean()-Y        : num
fBodyAcc-mean()-Z        : num
fBodyAcc-std()-X         : num
fBodyAcc-std()-Y         : num
fBodyAcc-std()-Z         : num
fBodyAcc-meanFreq()-X    : num
fBodyAcc-meanFreq()-Y    : num
fBodyAcc-meanFreq()-Z    : num
fBodyAccJerk-mean()-X    : num
fBodyAccJerk-mean()-Y    : num
fBodyAccJerk-mean()-Z    : num
fBodyAccJerk-std()-X     : num
fBodyAccJerk-std()-Y     : num
fBodyAccJerk-std()-Z     : num
fBodyAccJerk-meanFreq()-X: num
fBodyAccJerk-meanFreq()-Y: num
fBodyAccJerk-meanFreq()-Z: num
fBodyGyro-mean()-X       : num
fBodyGyro-mean()-Y       : num
fBodyGyro-mean()-Z       : num
fBodyGyro-std()-X        : num
fBodyGyro-std()-Y        : num
fBodyGyro-std()-Z        : num
fBodyGyro-meanFreq()-X   : num
fBodyGyro-meanFreq()-Y   : num
fBodyGyro-meanFreq()-Z   : num
fBodyAccMag-mean()       : num
fBodyAccMag-std()        : num
activity                 : Factor w/ 6 levels
subject                  : int

The 69 numeric variables are the mean (indicated by mean in the name) or standard deviation (indicated by std in the name). Variables that were measured along 3 axes are distinguished by X, Y or Z at the end of the name. A t at the start of the variable indicates the variable is measured int the time domain. A f indicates a variable measured in the frequency domain. All variables are normalized between -1 and 1. 

The activity variable indicates during which of the following activities the measurments were taken:
1 : Walking
2 : Walking_Upstairs
3 : Walking_Downstairs
4 : Sitting
5 : Standing
6 : Laying

The integer subject is an identifier for the person that was subject of the measurements.

Data dictionary meas_data_average
=================================

180 obs. of  71 variables:
The average of each numerical variable from meas_data for each activity and each subject.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012