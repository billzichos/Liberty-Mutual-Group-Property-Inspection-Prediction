wd <- "~/GitHub/Liberty-Mutual-Group-Property-Inspection-Prediction"

setwd(wd)

# read in the training file and prepare for combining with test.
train <- read.csv("train.csv", as.is = TRUE)
train$Source <- "Train"
train$id <- 0

# read in the test file and prepare for combining with train.
test <- read.csv("test.csv", as.is = TRUE)
test$Source <- "Test"
test$Hazard <- 0

# combine the data files for feature generation
library("dplyr")
train <- select(train, Id, Source, Hazard, T1_V1, T1_V2, T1_V3, T1_V4, T1_V5, T1_V6, T1_V7, T1_V8, T1_V9, T1_V10, T1_V11, T1_V12, T1_V13, T1_V14, T1_V15, T1_V16, T1_V17, T2_V1, T2_V2, T2_V3, T2_V4, T2_V5, T2_V6, T2_V7, T2_V8, T2_V9, T2_V10, T2_V11, T2_V12, T2_V13, T2_V14, T2_V15)
test <- select(test, Id, Source, Hazard, T1_V1, T1_V2, T1_V3, T1_V4, T1_V5, T1_V6, T1_V7, T1_V8, T1_V9, T1_V10, T1_V11, T1_V12, T1_V13, T1_V14, T1_V15, T1_V16, T1_V17, T2_V1, T2_V2, T2_V3, T2_V4, T2_V5, T2_V6, T2_V7, T2_V8, T2_V9, T2_V10, T2_V11, T2_V12, T2_V13, T2_V14, T2_V15)

df <- rbind(train, test)