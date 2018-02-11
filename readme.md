The run_analysis.R script takes the Human Activity Recognition Using Smartphones Dataset as input.
The output are 2 data frames containing a processed subset of the input data.

1. All data located in the files x-train, y-train, subject-train, x-tes, y-tes and subject-test are loaded in separate variables
2. First all training data is merged, second all test data. At the last, the training and test data is merged into 1 large data set.
3. variable names from the measurement data are loaded from features.txt. names for activity and subject data is added.
4. variables about the mean and standard deviation are subsetted together with the activity and subject.
5. the variables (columns) are named using the names from features.txt
6. The values in the activity column are given a descriptive name and then converted into a factor variable
7. create data set meas_data_average with the summarized average of each variable grouped by activity and subject