setwd("C:/Experiment/R/RLearning/m3")

movies <- read.csv(
  file = "Movies.csv",
  quote = "\""
)

genres <- read.csv(
  file = "Genres.csv", 
  quote = "\""
)

# Peek at data
head(movies)
head(genres)

#univariate statistics for qualitative variables
table(movies$Rating)

table(genres$Genre)

#analyze the location of a quantitative variable
mean(movies$Runtime)
median(movies$Runtime)
which.max(table(movies$Runtime))
table(movies$Runtime)
# 90 is the max value, 27 is the index of 90 in the table return result

#analyze the spread of a quantitative variable
min(movies$Runtime)
max(movies$Runtime)

range(movies$Runtime)
diff(range(movies$Runtime))
quantile(movies$Runtime)
quantile(movies$Runtime, 0.25)
quantile(movies$Runtime, 0.9)

IQR(movies$Runtime)
# 113 - 93 = 20 (75% quantile - 25% quantile)

#variance of the data
var(movies$Runtime)

# standard deviation
sd(movies$Runtime)

# Analyze the shape of a quantitative variable
# install.packages("moments")
library("moments")

skewness(movies$Runtime)

#peak of 3 means the peak of the distribution matches the normal distribution
# less than 3, means flat than normal distribution
kurtosis(movies$Runtime)

plot(density(movies$Runtime))

# install.packages("rggobi")
# library("rggobi")

# summarize a quantitative variable
summary(movies$Runtime)

# Bivariate statistics for two qualitative variables
table(genres$Genre, genres$Rating)

# Bivariate statistics for two quantitative variables

# Covarience
cov(movies$Runtime, movies$Box.Office)
cov(movies$Critic.Score, movies$Box.Office)

# Correlation coefficients
cor(movies$Runtime, movies$Box.Office)
cor(movies$Critic.Score, movies$Box.Office)

# Bivariate statistics for both a qualitative and quantitative variables
tapply(movies$Box.Office, movies$Rating, mean)
tapply(genres$Box.Office, genres$Genre, mean)
