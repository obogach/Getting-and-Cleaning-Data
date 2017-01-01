### Data manipulations

Following manipulations were made on the [original data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip):

*  It was downloaded and unpacked.
*  Test and train observations were merged into one data set. 
*  Only mean and standard deviation variables for each measurement were 
   considered.
*  Merged data set was enriched with descriptive subject and activity variables 
   for every measurement.
*  Resulting data set was created as an average of each variable for each 
   activity and each subject. All variables were named in descriptive manner. 
   See data dictionary section below for more details.
*  Finally, resulting data set was materialized as a csv file with header. 

### Acceptance criteria

Main requirement to the resulting data set is to be tidy data set. After 
studying of:

*  [recommendations](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) 
*  [tidy data principles](http://vita.had.co.nz/papers/tidy-data.pdf)

following acceptance criteria were defined and achieved:

1.  Each variable forms a column. There is no any ambugiouty for any column.
2.  Each observation forms a row. Observations were obtained from original data 
    set as an average value for each activity and subject (all manopulations are 
    listed above).
3.  Each type of observational unit forms a table. Resulting data set is a set 
    of average values for for each activity and subject. Nothing more or less.

### Data dictionary

Output data set contains following variables (columns). Except first two 
columns (`Activity` and `SubjectId`), description for the rest of variables 
should be considered as an average value of the corresponding measurement from 
original data set for particular `Activity` and `SubjectId`.
Description of original measurements be found below in section Original data 
set code book.

*  `Activity` describes activity performed by `SubjectId` during the observation. Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
*  `SubjectId`. Encoded representation of person who performed the activity. Values [1...30].
*  `Avg-fBodyAcc-mean()-X`. Average value of `fBodyAcc-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-mean()-Y`. Average value of `fBodyAcc-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-mean()-Z`. Average value of `fBodyAcc-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-meanFreq()-X`. Average value of `fBodyAcc-X` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-meanFreq()-Y`. Average value of `fBodyAcc-Y` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-meanFreq()-Z`. Average value of `fBodyAcc-Z` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-std()-X`. Average value of `fBodyAcc-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-std()-Y`. Average value of `fBodyAcc-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAcc-std()-Z`. Average value of `fBodyAcc-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-mean()-X`. Average value of `fBodyAccJerk-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-mean()-Y`. Average value of `fBodyAccJerk-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-mean()-Z`. Average value of `fBodyAccJerk-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-meanFreq()-X`. Average value of `fBodyAccJerk-X` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-meanFreq()-Y`. Average value of `fBodyAccJerk-Y` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-meanFreq()-Z`. Average value of `fBodyAccJerk-Z` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-std()-X`. Average value of `fBodyAccJerk-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-std()-Y`. Average value of `fBodyAccJerk-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccJerk-std()-Z`. Average value of `fBodyAccJerk-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccMag-mean()`. Average value of `fBodyAccMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccMag-meanFreq()`. Average value of `fBodyAccMag` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyAccMag-std()`. Average value of `fBodyAccMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyAccJerkMag-mean()`. Average value of `fBodyBodyAccJerkMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyAccJerkMag-meanFreq()`. Average value of `fBodyBodyAccJerkMag` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyAccJerkMag-std()`. Average value of `fBodyBodyAccJerkMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyGyroJerkMag-mean()`. Average value of `fBodyBodyGyroJerkMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyGyroJerkMag-meanFreq()`. Average value of `fBodyBodyGyroJerkMag` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyGyroJerkMag-std()`. Average value of `fBodyBodyGyroJerkMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyGyroMag-mean()`. Average value of `fBodyBodyGyroMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyGyroMag-meanFreq()`. Average value of `fBodyBodyGyroMag` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyBodyGyroMag-std()`. Average value of `fBodyBodyGyroMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-mean()-X`. Average value of `fBodyGyro-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-mean()-Y`. Average value of `fBodyGyro-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-mean()-Z`. Average value of `fBodyGyro-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-meanFreq()-X`. Average value of `fBodyGyro-X` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-meanFreq()-Y`. Average value of `fBodyGyro-Y` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-meanFreq()-Z`. Average value of `fBodyGyro-Z` meanFreq from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-std()-X`. Average value of `fBodyGyro-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-std()-Y`. Average value of `fBodyGyro-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-fBodyGyro-std()-Z`. Average value of `fBodyGyro-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAcc-mean()-X`. Average value of `tBodyAcc-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAcc-mean()-Y`. Average value of `tBodyAcc-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAcc-mean()-Z`. Average value of `tBodyAcc-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAcc-std()-X`. Average value of `tBodyAcc-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAcc-std()-Y`. Average value of `tBodyAcc-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAcc-std()-Z`. Average value of `tBodyAcc-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerk-mean()-X`. Average value of `tBodyAccJerk-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerk-mean()-Y`. Average value of `tBodyAccJerk-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerk-mean()-Z`. Average value of `tBodyAccJerk-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerk-std()-X`. Average value of `tBodyAccJerk-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerk-std()-Y`. Average value of `tBodyAccJerk-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerk-std()-Z`. Average value of `tBodyAccJerk-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerkMag-mean()`. Average value of `tBodyAccJerkMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccJerkMag-std()`. Average value of `tBodyAccJerkMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccMag-mean()`. Average value of `tBodyAccMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyAccMag-std()`. Average value of `tBodyAccMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyro-mean()-X`. Average value of `tBodyGyro-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyro-mean()-Y`. Average value of `tBodyGyro-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyro-mean()-Z`. Average value of `tBodyGyro-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyro-std()-X`. Average value of `tBodyGyro-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyro-std()-Y`. Average value of `tBodyGyro-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyro-std()-Z`. Average value of `tBodyGyro-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerk-mean()-X`. Average value of `tBodyGyroJerk-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerk-mean()-Y`. Average value of `tBodyGyroJerk-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerk-mean()-Z`. Average value of `tBodyGyroJerk-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerk-std()-X`. Average value of `tBodyGyroJerk-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerk-std()-Y`. Average value of `tBodyGyroJerk-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerk-std()-Z`. Average value of `tBodyGyroJerk-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerkMag-mean()`. Average value of `tBodyGyroJerkMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroJerkMag-std()`. Average value of `tBodyGyroJerkMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroMag-mean()`. Average value of `tBodyGyroMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tBodyGyroMag-std()`. Average value of `tBodyGyroMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAcc-mean()-X`. Average value of `tGravityAcc-X` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAcc-mean()-Y`. Average value of `tGravityAcc-Y` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAcc-mean()-Z`. Average value of `tGravityAcc-Z` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAcc-std()-X`. Average value of `tGravityAcc-X` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAcc-std()-Y`. Average value of `tGravityAcc-Y` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAcc-std()-Z`. Average value of `tGravityAcc-Z` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAccMag-mean()`. Average value of `tGravityAccMag` mean from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]
*  `Avg-tGravityAccMag-std()`. Average value of `tGravityAccMag` std from merged original data set for current `Activity` and `SubjectId`. Values: [-1...1]

### Original data set code book

This section was created by copying and adapting of original code book 
(file features_info.txt in original data set).

The features selected for this database come from the accelerometer and 
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals 
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they 
were filtered using a median filter and a 3rd order low pass Butterworth filter 
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration 
signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter 
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in 
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the 
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals 
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain 
signals). 

These signals were used to estimate variables of the feature vector for each 
pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*  `tBodyAcc-XYZ`
*  `tGravityAcc-XYZ`
*  `tBodyAccJerk-XYZ`
*  `tBodyGyro-XYZ`
*  `tBodyGyroJerk-XYZ`
*  `tBodyAccMag`
*  `tGravityAccMag`
*  `tBodyAccJerkMag`
*  `tBodyGyroMag`
*  `tBodyGyroJerkMag`
*  `fBodyAcc-XYZ`
*  `fBodyAccJerk-XYZ`
*  `fBodyGyro-XYZ`
*  `fBodyAccMag`
*  `fBodyAccJerkMag`
*  `fBodyGyroMag`
*  `fBodyGyroJerkMag`

The set of variables that were estimated from these signals are: 

*  `mean()`: Mean value
*  `std()`: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. 
These are used on the angle() variable:

*  `gravityMean`
*  `tBodyAccMean`
*  `tBodyAccJerkMean`
*  `tBodyGyroMean`
*  `tBodyGyroJerkMean`


