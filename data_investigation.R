#install.packages("RCurl")
#install.packages("skimr")
library(RCurl)
library(skimr)

# Get dataset
iris <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv"))

# Data view
View(iris)

# Summary statistics
# head() / tail()
head(iris, 4)
tail(iris, 4)

species <- iris$Species

# summary()
summary(iris)
summary(iris$Sepal.Length)

# missing data
sum(is.na(iris))

# skim summary
skim(iris)

# skim by grouping
iris %>%
  dplyr::group_by(Species) %>%
  skim()