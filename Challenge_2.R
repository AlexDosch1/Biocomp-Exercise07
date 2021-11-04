#Load the data contained in the provided ‘iris.csv’ file and write R code 
#to do the following things:
file<-read.table("iris.csv", header=TRUE, sep=",", stringsAsFactors = TRUE)

#print the last 2 rows in the last 2 columns to the R terminal
lastTwo<-file[tail(file, n=2), 4:5]

###get the number of observations for each species included in the data set
num_setosa<-count.fields(match("setosa", file, nomatch = NA_integer_, incomparables = NULL))
num_versicolor<-count.fields(match("versicolor", file, nomatch = NA_integer_, incomparables = NULL))
num_virginica<- count.fields(match("virginica", file, nomatch = NA_integer_, incomparables = NULL))

##get rows with Sepal.Width > 3.5
# Sort numerically
sorted<-order(file$Sepal.Width)
# keep values higher than 3.5 and print those rows
if(sorted>3.5){
  print("Sepal Width above 3.5")
} else {
  print("N/A")
}

#write the data for the species setosa to a comma-delimited file
  #named ‘setosa.csv’
setosa.csv <- write.csv(file$Species=="setosa", sep = ",")

#calculate the mean, minimum, and maximum of Petal.Length for observations 
  #from virginica
virginicaData<-match("virginica", file, nomatch = NA_integer_, incomparables = NULL)
mean(virginicaData$Petal.Length, na.rm = FALSE)
min(virginicaData$Petal.Length, na.rm = FALSE)
max(virginicaData$Petal.Length, na.rm = FALSE)
