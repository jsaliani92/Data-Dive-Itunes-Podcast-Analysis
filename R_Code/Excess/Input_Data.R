#Script to input and clean the podcast ranking csv file

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

#create test matrix for plotting through melt function

endrank <- 20
startdate <- 90
enddate <- 136

test <- melt(editedshowmatrix[1:endrank,startdate:enddate],id.vars="Rank")
count(test[,3])[order(count(test[,3])[,2],decreasing=TRUE),]

#Works out!!

#Rank 1
endrank <- 1
startdate <- 1
enddate <- 136

test <- melt(editedshowmatrix[1:endrank,startdate:enddate],id.vars="Rank")
firstcount <- count(test[,1])[order(count(test[,1])[,2],decreasing=TRUE),]

#create matrix for each show

firstdayrank <- matrix(101,nrow=9,ncol=136)

rownames(firstdayrank) <- firstcount[,1]
colnames(firstdayrank) <- colnames(editedshowmatrix)[1:136]

for(i in 1:9){
  for(j in 1:136){
    if(length(which(firstcount[i,1] == editedshowmatrix[,j])) > 0){
    firstdayrank[i,j] <- which(firstcount[i,1] == editedshowmatrix[,j])
    }
  }
}











