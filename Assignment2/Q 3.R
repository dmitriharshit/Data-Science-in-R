

library(MASS)
data(ships)


accidents_by_type <- table(ships$type)


barplot(accidents_by_type, main = "Number of Accidents by Ship Type", xlab = "Ship Type", ylab = "Number of Accidents", col = "blue")


