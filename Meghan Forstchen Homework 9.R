#Homework 9 Assignment

#Make a custom function that reads the contents of a directory
#Get a list of all files in the directory that you will be applying function to
TestFiles <- list.files(path="~/Desktop/TestFile", pattern="*.xlsx", full.names=TRUE, recursive=FALSE)


#Define the function to find coefficient of variation

TestFilesFunction <- function(x){
  SumFiles <- mean(x)
  StandardDeviationFiles <- sd(x)
  CoefficientVarianceFiles <- StandardDeviationFiles/SumFiles
  return(CoefficientVarianceFiles)
}

  
