library(RCurl)

# Get dataset
iris <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv"))

# plot
plot(iris)
plot(iris, col = "red")

# scatter plot
plot(iris$Sepal.Width, iris$Sepal.Length)
plot(iris$Sepal.Width, iris$Sepal.Length, col = "blue")
plot(iris$Sepal.Width, iris$Sepal.Length, col = "green",
     xlab = "Sepal width", ylab = "Sepal length")

# histogram
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, col = "brown")
