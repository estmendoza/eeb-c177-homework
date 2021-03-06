library(datasets)
data(iris)
summary(iris)
names(iris) <- tolower(names(iris))
library(dplyr)

virginica <- filter(iris, species == "virginica")
head(virginica)
sepalLength6 <- filter(iris, species == "virginica", sepal.length > 6)
tail(sepalLength6)
selected <- select(iris, sepal.length, sepal.width, petal.length)
selected2 <- select(iris, sepal.length:petal.length)
head(selected, 3)
identical(selected, selected2)
newCol <- mutate(iris, greater.half = sepal.width > 0.5 * sepal.length)
tail(newCol)

newCol <- arrange(newCol, petal.width)
head(newCol)
arr.virg <- newCol %>% filter(species == "virginica") %>%
  arrange(sepal.width)
arr.virg[30:35,]
summarise(arr.virg, mean.length = mean(sepal.length, na.rm = TRUE))

plot(iris)
plot(iris$sepal.width, iris$sepal.length)
hist(iris$sepal.width)
