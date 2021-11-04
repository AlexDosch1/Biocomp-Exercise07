# Recreate head from bash in R *used with wages.csv
# define a variable with the file to return lines from
var<-read.table("wages.csv", header=TRUE, sep=",", stringsAsFactors = FALSE,)
# and a variable representing the number of lines to be returned from
  # the top of the indicated file
# print selected file to terminal