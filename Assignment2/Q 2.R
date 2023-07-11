install.packages("imager")
library(imager)

flip <- function(image) {
  
  width <- dim(image)[2]
  height <- dim(image)[1]
  
  
  flipped <- imager::as.cimg(matrix(NA_real_, nrow = height, ncol = width, dimnames = list(NULL, NULL)))
  
 
  for (y in 1:height) {
    for (x in 1:width) {
      flipped[y, x] <- image[y, width - x + 1]
    }
  }
  
  
  return(flipped)
}


original_image <- load.image("path/to/your/image.png")
flipped_image <- flip(original_image)


par(mfrow = c(1, 2))
plot(original_image, main = "Original Image")
plot(flipped_image, main = "Flipped Image")

