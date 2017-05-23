#Load and edit podcast data script


library(plyr)
library(reshape2)

##################
#Read in file

rankings <- read.csv("~/Desktop/Coding/Data/Podcast_Project2/Podcast_Rankings2.csv")

#Reduce matrix to correct dimensions
rankings <- rankings[,1:136]

#only get show names and add ranking column
showmatrix <- cbind(as.data.frame(rankings[seq(1,300,3),]),c(1:100))

#input end date in matrix
end <- "2017-05-16"

#create date columns plus ranking column
colnames(showmatrix) <- c(as.Date(as.Date("2017-01-01"):as.Date(end),origin = "1970-01-01"),"Rank")

colnames(showmatrix)[137] <- "Rank"

#eliminate numbers for each show

editedshowmatrix <- showmatrix

editedshowmatrix <- as.matrix(editedshowmatrix)

for(i in 1:9){
  for(j in 1:136){
    editedshowmatrix[i,j] <- substring(showmatrix[i,j],2)
  }
}


for(i in 10:99){
  for(j in 1:136){
    editedshowmatrix[i,j] <- substring(gsub("-X\xaa","",gsub("\xd5s","",showmatrix[i,j])),3)
  }
}
