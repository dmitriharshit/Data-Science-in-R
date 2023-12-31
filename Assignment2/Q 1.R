install.packages("ggplot2")

library(ggplot2)


data(iris)


ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(x = "Species", y = "Sepal Length") +
  ggtitle("Boxplot of Sepal Length by Species")

ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(x = "Species", y = "Petal Length") +
  ggtitle("Boxplot of Petal Length by Species")


ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length") +
  ggtitle("Scatterplot of Sepal Length and Petal Length (colored by Species)")
