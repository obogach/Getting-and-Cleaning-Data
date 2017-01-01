### Repo description

This repo is created to verify programming assignment for the course 
"Getting and Cleaning Data". It consists of:

*  [script (run_analysis.R)](https://github.com/obogach/Getting-and-Cleaning-Data/blob/master/run_analysis.R). 
*  [resulting data set (output_dataset_2.txt)](https://github.com/obogach/Getting-and-Cleaning-Data/blob/master/output_dataset_2.txt)
*  [code book (code_book.md)](https://github.com/obogach/Getting-and-Cleaning-Data/blob/master/code_book.md)
*  readme.md (this file)


### Script

The script performs all manipulations with data, including original data set 
downloading from remote resource, data set unpacking, tailoring and producing 
tidy data set as per the assignment requirements. Code contains detailed 
comments for every function and describes input and output parameters. 
Below is brief description of the script file:

*  `GetOriginalDataset()` downloads original dataset from remote resource into 
   the specially created sub-directory (variable `workingDirectory`) of current 
   working directory and uzips all the files into the `extractDirectory`. 
   If original archive is already present in `workingDirectory` then 
   downloading will be omitted.
*  `ReadHeaderFile()` reads header (label) files (activities or features) to 
   represent corresponding data as a data frame for further manipulations 
   (decoding)
*  `ReadObservationsFile()` reads observation file for the predefined set of 
   variables. Observation file can either be from testing or training data set. 
   Predefined set of variables is composed by selecting all variables from 
   original observation file which are related to either mean or standard 
   deviation for each measurement.
*  `MergeObservations()` merges train and test observations
*  `GenerateFirstOutputDataset()` generates first required data set for merged 
   observations (test and train sets) which contains all variables returned by 
   `ReadObservationsFile()` except column `SubjectId`. This function is kept in 
   the script as an evidence of whole assignment completion.
*  `GenerateSecondOutputDataset()` generates second required data set for merged 
   observations (test and train sets) which contains all variables returned by 
   `ReadObservationsFile()` as per the requirements (see code book for more 
   details)
   `RunAnalysis()` executes all steps required to generate output data tidy set 
*  although 'Constants definition' section contains predefined self saying 
   variables, some of them are explained below.


To reproduce all the steps and get tidy data set as required per the assignment, 
following must be done:

*  ensure package `data.table` is installed. If not, please execute following 
   command in R console `install.packages("data.table")`. During this exercise 
   version '1.9.6' of the package was used. 
*  in order to skip downloading and unpacking step, user have to: (a) comment 
   out first line of code in function `RunAnalysis()`, to prevent invokation 
   of `GetOriginalDataset()`; (b) properly maintain variables `workingDirectory` 
   and `extractDirectory` so the script can find your copy of extracted original 
   data set. `workingDirectory` is assumed to be located in current working 
   directory and `extractDirectory` is a sub-directory of `workingDirectory`.
   Extracted original data set is expected to be found in `headerDirectory`,
   which is in turn a sub-directory of `extractDirectory`.
*  to run the script and get execute command `source('<path_to_downloaded>/run_analysis.R')`
   and then execute `RunAnalysis()`.

### Original data set

As per the assignment, original data set is available at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
This URL is stored in variable `originalDatasetURL`. 
More details on original data set can be found at  [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Resulting data set, code book 
Resulting data set is composed according to the requirements stated in [Peer-graded Assignment: Getting and Cleaning Data Course Project](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)
More details on manipulations and variables can be found in the code book.
