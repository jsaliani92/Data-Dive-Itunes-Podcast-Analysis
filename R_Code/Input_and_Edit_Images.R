#Input images and formatting it correctly

library(lazyeval)
library(png)
library(gridExtra)
library(grid)
library(emoGG)
library(ggplot2)
library('devtools')

choice <- c("Crooked_Media","Crooked_Media")

val <- 1

setwd(paste0("/Users/salianij/Desktop/Coding/Images/Podcast_Project2/",choice[val],"/Input"))

order <- dir()[grep(".png",dir())]
images <- vector("list",length=length(order))

#order2 <- c(6,8,4,9,7,5,1,2,3)

for(i in 1:length(images)){
  images[[i]] <- readPNG(dir()[grep(".png",dir())[i]])
  images[[i]]<- rasterGrob(images[[i]], interpolate=TRUE)
}

