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