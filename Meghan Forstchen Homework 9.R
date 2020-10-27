#Homework 9 Assignment

#Make a custom function that reads the contents of a directory
#Function should: use "dir" argument, find coefficient of variation from
#optional column, 

setwd("~/Desktop/TestFile")

#Get a list of all files in the directory that you will be applying function to
#I am working with a practice directory called "TestFile" on my Desktop

listcsv <- dir(pattern = "*.csv")

#Create a location to hold outputs
OutputList <- list()

for (i in 1:length(listcsv)){
  OutputList[[i]] <- read.csv(listcsv[i])
}
str(OutputList[[1]]) 

TestFilesFunction <- function(x){
  MeanFiles <- mean(x)
  StandardDeviationFiles <- sd(x)
  CoefficientVarianceFiles <- StandardDeviationFiles/MeanFiles
  return(CoefficientVarianceFiles)
}

FirstTrialOutput <- lapply(Book3, TestFilesFunction)


WarningMessage <- function(x){
  if(nrow(x) < 50) {warning("There are less than 50 observations")}
  return()
}

ErrorMessage <- function(x){
  if(nrow(x) < 50) {stop("There are less than 50 observations")}
  return()
}

WarningMessage(Book3)
ErrorMessage(Book3)



