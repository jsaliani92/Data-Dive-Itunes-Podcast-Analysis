#Identifying Crooked Media Podcasts
library(reshape2)

#Create unique list of shows

shows <- editedshowmatrix[,1]
for(i in 2:136){
  shows <- c(shows,editedshowmatrix[,i])
}
#list of shows
uniqueshows <- (unique(shows))





