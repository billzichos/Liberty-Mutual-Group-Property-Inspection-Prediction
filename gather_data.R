wd <- "~/GitHub/Liberty-Mutual-Group-Property-Inspection-Prediction"

setwd(wd)

# The following files are provided
#   - sample_submission.csv.zip
#   - train.csv.zip
#   - test.csv.zip

source("~/GitHub/Get-Raw-Data/download.R")

downloadSingleKaggleZip("liberty-mutual-group-property-inspection-prediction","sample_submission.csv.zip", "sample_submission.csv")
downloadSingleKaggleZip("liberty-mutual-group-property-inspection-prediction","train.csv.zip", "train.csv")
downloadSingleKaggleZip("liberty-mutual-group-property-inspection-prediction","test.csv.zip", "test.csv")