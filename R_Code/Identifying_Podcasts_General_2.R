#Second part of creating a matrix for the shows of interest
#after choosing the podcasts of interest


dayrank <- matrix(101,nrow=length(showsofinterest),ncol=136)

rownames(dayrank) <- showsofinterest
colnames(dayrank) <- colnames(editedshowmatrix)[1:136]

for(i in 1:length(showsofinterest)){
  for(j in 1:136){
    if(length(which(rownames(dayrank)[i] == editedshowmatrix[,j])) > 0){
      dayrank[i,j] <- which(rownames(dayrank)[i] == editedshowmatrix[,j])
    }
  }
}

dayplot <- melt(dayrank)
colnames(dayplot) <- c("Show","Days","Rank")