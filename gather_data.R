wd <- "~/GitHub/Liberty-Mutual-Group-Property-Inspection-Prediction"

setwd(wd)

# The following files are provided
#   - sample_submission.csv.zip
#   - train.csv.zip
#   - test.csv.zip

source("~/GitHub/Get-Raw-Data/download.R")
downloadKaggle("liberty-mutual-group-property-inspection-prediction","sample_submission.csv.zip")
downloadKaggle("liberty-mutual-group-property-inspection-prediction","train.csv.zip")
downloadKaggle("liberty-mutual-group-property-inspection-prediction","test.csv.zip")

trnFile <- "train.csv"
tstFile <- "test.csv"

download.file(trnUrl, paste(wd,"\\train.csv", sep=""), quiet=TRUE)
download.file(tstUrl, paste(wd,"\\test.csv", sep=""), quiet=TRUE)

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )