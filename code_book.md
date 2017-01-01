### Manipulations 

Following manipulations were made on the [original data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip):

*  It was downloaded and unpacked.
*  Test and train observations were merged into one data set. 
*  Only mean and standard deviation variables for each measurement were 
   considered.
*  Merged data set was enriched with descriptive subject and activity variables 
   for every measurement.
*  Resulting data set was created as an average of each variable for each 
   activity and each subject. All variables were named in descriptive manner. 
   See code book for more details.
*  Finally, resulting data set was materialized as a csv file with header. 

### Acceptance criteria

Main requirement to the resulting data set is to be tidy data set. After 
studying of:

*  [recommendations](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) 
*  [tidy data principles](http://vita.had.co.nz/papers/tidy-data.pdf)

following acceptance criteria were defined and achieved:

1.  Each variable forms a column. 

2.  Each observation forms a row. 

3.  Each type of observational unit forms a table.

### Data dictionary

