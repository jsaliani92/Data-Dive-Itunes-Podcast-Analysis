#summary statistic page

#Stat 1: number of times in leaderboard

daysinchart <- dayplot[which(dayplot[,3] < 101),]

stattable <- matrix(0,nrow=length(showsofinterest),ncol=13)

rownames(stattable) <- rownames(dayrank)

colnames(stattable) <- c(paste0("Top",c(100,100,50,50,25,25,10,10,5,5,1,1)),"Mean_Rank")

barrier <- c(50,25,10,5,1)
col1 <- seq(3,11,2)
col2 <- col1+1

for(i in 1:length(showsofinterest)){
  daysinchartvar <- daysinchart[which(daysinchart[,1] == rownames(stattable)[i]),]
  stattable[i,1] <- length(daysinchartvar[,1])
  stattable[i,2] <- paste0(round(as.numeric(stattable[i,1]) / (136-as.numeric(daysinchartvar[1,2])+1)*100,2),"%")
  for(j in 1:5){
    stattable[i,col1[j]] <- length(daysinchartvar[which(daysinchartvar[,3] <= barrier[j]),1])
    stattable[i,col2[j]] <- paste0(round(as.numeric(stattable[i,col1[j]]) / (136-as.numeric(daysinchart[which(daysinchart[,1] == rownames(stattable)[i])[1],2])+1)*100,2),"%")
  }
  stattable[i,13] <- round(mean(daysinchartvar[,3]),0)
}

output1 <- stattable[,c(seq(1,11,2),13)]
output2 <- stattable[,c(seq(2,12,2),13)]

write.csv(output1,paste0(outputpath,"Statistics_Table_(Total_Days_On_Chart).csv"))
write.csv(output2,paste0(outputpath,"Statistics_Table_(Percent_Days_On_Chart_From_Release).csv"))