# Recreate head from bash in R *used with wages.csv
# define a variable with the file to return lines from
var<-read.table("wages.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)
# and a variable representing the number of lines to be returned from
  # the top of the indicated file
n<-var[1:n,] #where n is a flexible number you want to print; to replicate
  # head from bash, set n to 10
# print selected file to terminal
print(n)
