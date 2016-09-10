setwd("C:/Experiment/R/RLearning/m2")

movies <- read.table(
  file = "Movies.txt",
  sep = "\t",
  header = TRUE,
  quote = "\""
)

#peek at data
head(movies)

# Look at column names
names(movies)

#Problem #1: column name is incorrect
names(movies[5])

#Rename variables (i.e. columsn)
names(movies)[5] <- "Critic.Score"
names(movies)

# Problem #2: Missing values
# Count missing values
sum(is.na(movies))


#inspect rows with missing values
tail(movies)

# Exclude observations with missing values
movies <- na.omit(movies)

# Problem 2 Resolved
sum(is.na(movies))

# Problem #3 units in runtime column
# Peek at the movie runtime data
head(movies$Runtime)

#Note: This next line will throw an error
# mean(movies$Runtime)

# Detemine the data type
class(movies$Runtime)

# Cast from factor to character string
runtimes <- as.character(movies$Runtime)
head(runtimes)
class(runtimes)

#eliminates the unit of measure
runtimes <- sub(" min", "", runtimes)
head(runtimes)

# Cast the charater string to integer
movies$Runtime <- as.integer(runtimes)
mean(movies$Runtime)

#problem 4: Box office uses three units of measure
head(movies$Box.Office)

#Create a fucntion to convert box office revenue
convertBoxOffice <- function(boxOffice)
{
  stringBoxOffice <- as.character(boxOffice)
  replacedBoxOffice <- gsub("[$|k|M]", "", stringBoxOffice)
  numericBoxOffice <- as.numeric(replacedBoxOffice)
  if (grepl("M", boxOffice)){
    numericBoxOffice
  } else if (grepl("k", boxOffice)){
    numericBoxOffice * 0.001
  } else {
    numericBoxOffice * 0.000001
  }
}

# Convert box office to single unit of measure (millions)
movies$Box.Office <- sapply(movies$Box.Office, convertBoxOffice)

# Problem 4 is solved
head(movies$Box.Office)
class(movies$Box.Office)
mean(movies$Box.Office)

#Save data to a CSV file
write.csv(movies, "Movies_self.csv")















