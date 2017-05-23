#Choosing pods to analyze



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

firstdayplot <- melt(firstdayrank[c(1,3,4,8,7,9,5,6,2),])
colnames(firstdayplot) <- c("Show","Days","Rank")