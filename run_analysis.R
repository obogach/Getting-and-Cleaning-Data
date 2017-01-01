library(data.table)

# constants definition
workingDirectory        = "/Getting and Cleaning Data"
originalDatasetURL      = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
originalDatasetFile     = basename(originalDatasetURL)
extractDirectory        = "/extract"
headerDirectory         = "/UCI HAR Dataset"
firstOutputDatasetFile  = "output_dataset_1.csv"
secondOutputDatasetFile = "output_dataset_2.csv"


GetOriginalDataset <- function() {
  # Downloads original dataset from rempte resource into the specially created   
  # sub-directory of current working directory and uzips all the files
  
  # create directory for this exercise 
  targetDirectory <- paste0(getwd(), workingDirectory)
  if (!file.exists(targetDirectory)) {
    dir.create(targetDirectory)
  }
  
  # download original dataset from remote resource
  datasetLocalFile <- paste0(targetDirectory, "/", originalDatasetFile)
  if (!file.exists(datasetLocalFile)) {
    download.file(url      = originalDatasetURL, 
                  destfile = datasetLocalFile, 
                  method   = "libcurl")
  }

  # extract downloaded dataset
  unzip (zipfile = datasetLocalFile, exdir = paste0(getwd(), 
                                                    workingDirectory, 
                                                    extractDirectory))
}

ReadHeaderFile <- function (inFileName) {
  # Reads header (label) file to decode (replace) an integer representation of 
  # some activity or feature with its human-readable equivalent.
  #
  # Args: 
  #   inFileName: Can either be "activity_labels.txt" or "features.txt" .
  #    
  # Returns:
  #   Data frame with to link to two variables - id and val. Variable "id" is 
  #   an  encoded representation of "val" variable.
  #
  headerFilename <- paste0(getwd(), workingDirectory, "/", extractDirectory, 
                           headerDirectory, "/", inFileName)
  fileData <- read.delim(file             = headerFilename, 
                         header           = FALSE, 
                         sep              = " ", 
                         col.names        = c("id", "val"), 
                         stringsAsFactors = FALSE)
  return(fileData)
}

ReadObservationsFile <- function (inDataSet) {
  # Reads observation file for the predefined set of variables.
  # Observation file can either be from testing or training data set. 
  # Predefined set of variables is composed by selecting all variables 
  # from original observation file which are related to either mean or 
  # standard deviation for each measurement 
  #  
  # Args: 
  #   inDataSet: indicates source of data set to be read. value "test" 
  #              corresponds to test data set; value "train" corresponds to
  #              train dataset
  #    
  # Returns: data table with descriptive activity name, subject, and measurments   

  # read list of features and select only related to standard deviation or mean
  features <- ReadHeaderFile("features.txt")
  features <- features[c(features$id[grep("[-]((std)|(mean))", features$val, 
                                          value = FALSE)]), ]
  # compose sorce file names
  observationDirectory <- paste0(getwd(), workingDirectory, "/", 
                                 extractDirectory, headerDirectory, "/")
  observationsFile <- paste0(observationDirectory, paste0(inDataSet, "/X_", 
                                                          inDataSet, ".txt"))
  activityLabelFile <- paste0(observationDirectory, paste0(inDataSet, "/Y_", 
                                                           inDataSet, ".txt"))
  subjectFile <- paste0(observationDirectory, paste0(inDataSet, "/subject_", 
                                                     inDataSet, ".txt"))
  # read observation file
  fileData <- fread(input     = observationsFile,
                    header    = FALSE,
                    select    = features$id,
                    col.names = features$val)
  # read activity leabels for the obser
  activities <- ReadHeaderFile("activity_labels.txt")
  # read activities for the observation
  activityData <- read.csv(file      = activityLabelFile, 
                           header    = FALSE, 
                           col.names = c("id"))
  # replace integer activity representation with literal, taking care about 
  # proper order
  activityData$orderrow <- 1:nrow(activityData)
  activityData <- merge(activityData, activities, by = "id", sort = FALSE)
  activityData <- activityData[order(activityData$orderrow), ]
  # read subject data
  subjectData <- read.csv(file = subjectFile, header = FALSE)
  # composing required data set with tagged variables
  fileData <- cbind("SubjectId" = subjectData$V1, 
                    "Activity" = activityData$val, 
                    fileData) 
  return(fileData)
}

MergeObservations <- function() {
  # Merges train and test observations 
  #    
  # Returns: merged observations data set   
  dtTest <- ReadObservationsFile("test")
  dtTrain <- ReadObservationsFile("train")
  dtObservations <- rbind(dtTrain, dtTest)
  return(dtObservations)
}

GenerateFirstOutputDataset <- function(inDataSet) {
  # Generates first required data set for merged observations 
  # (test and train sets) which contains all variables returned by 
  # ReadObservationsFile() except "SubjectId"
  # 
  # Arguments:
  #   inDataSet - merged observations data set 
  # 
  # Produces: csv file in working directory
  dt <- copy(inDataSet)
  dt <- dt[, SubjectId := NULL]
  write.csv(x = dt, file = paste0(getwd(), workingDirectory, "/", 
                                  firstOutputDatasetFile), 
            row.names = FALSE, quote = FALSE, fileEncoding = "UTF-8")
}

GenerateSecondOutputDataset <- function(inDataSet) {
  # Generates second required data set for merged observations 
  # (test and train sets) which contains all variables returned by 
  # ReadObservationsFile() except "SubjectId"
  # 
  # Arguments:
  #   inDataSet - merged observations data set 
  # 
  # Produces: csv file in working directory
  dt <- copy(inDataSet)
  dt <- dt[, lapply(.SD, mean), by = c("Activity", "SubjectId"), 
           .SDcols=names(dt)[3:81]]
  setorder(dt, "Activity", "SubjectId")
  setnames(dt, c("Activity", "SubjectId", tapply(names(dt)[3:81], 
                                                 names(dt)[3:81], 
                                                 function(x) paste0("Avg-", 
                                                                    x))))
#  aggDataActivity <- dt[, lapply(.SD, mean), by = c("Activity"), 
#                        .SDcols=names(dt)[3:81]]
#  aggDataPersonId <- dt[, lapply(.SD, mean), by = c("SubjectId"), 
#                        .SDcols=names(dt)[3:81]]
#  setnames(aggDataActivity, c("GroupedByFactor", names(dt)[3:81])) #rename rest of the columns 
#  setnames(aggDataPersonId, c("GroupedByFactor", names(dt)[3:81])) #rename rest of the columns 
#  #add factor name column along with factor value column 
#  aggDataPersonId <- aggdataPersonId[order(as.integer(aggdataPersonId$GroupBy)), ]
#  dt <- rbind(aggdataActivity, aggdataPersonId, make.row.names = FALSE)
#  #mapply(c, aggdataActivity, aggdataPersonId)
  
  write.csv(x = dt, 
            file = paste0(getwd(), workingDirectory, "/", 
                          secondOutputDatasetFile),
            row.names = FALSE, 
            quote = FALSE, 
            fileEncoding = "UTF-8")
}


RunAnalysis <- function() {
  GetOriginalDataset()
  dt <- MergeObservations()
  #GenerateFirstOutputDataset(dt)
  GenerateSecondOutputDataset(dt)
}
