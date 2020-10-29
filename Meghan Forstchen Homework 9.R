
#(((This ended up being spread over several functions because I couldn't get it to run in one and it is not fully functional :(  )))
#Ideally it would have been in one function with the arguments "dir" for the user specified directory, "Column" = user specified column, and 
#a Error Message either being True/False that could be changed to give an error or warning. 


#Homework 9 Assignment

#Make a custom function that reads the contents of a directory
#Function should: use "dir" argument, find coefficient of variation from
#optional column

#Set my working directory
setwd("~/Desktop/TestFile")


#Get a list of all files in the directory that you will be applying function to
#I am working with a practice directory called "TestFile" on my Desktop

dir=dir(path="~/Desktop/TestFile", pattern=".csv")

#Create a user specified column for the data
Column = 1


#Read in the files from the directory
  for (i in 1:length(dir)){
    dt <- paste("dt", i, sep = "_")
    assign(dt, read.csv(dir[i], header=TRUE))
  }

#Coefficient of VarianceFunction
CoefficientVarianceFunction <- function(x){
     
  MeanFiles <- mean(x)
  StandardDeviationFiles <- sd(x)
  CoefficientVarianceFiles <- StandardDeviationFiles/MeanFiles
  return(CoefficientVarianceFiles)
  }

#Warning message function if there are less than 50 observations
WarningMessage <- function(x){
  if(nrow(x) < 50) {warning("There are less than 50 observations")}
  return()
}
#Error Messge if there are less than 50 observation
ErrorMessage <- function(x){
  if(nrow(x) < 50) {stop("There are less than 50 observations")}
  return()
}




