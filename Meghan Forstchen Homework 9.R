#Homework 9 Assignment

#Make a custom function that reads the contents of a directory
#Get a list of all files in the directory that you will be applying function to
TestFiles <- list.files(path="~/Desktop/TestFile", pattern="*.xlsx", full.names=TRUE, recursive=FALSE)


lapply(files, function(x)