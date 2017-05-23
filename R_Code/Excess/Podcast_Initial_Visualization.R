##################
#Code to test initial visualizations

library(lazyeval)
library(ggplot2)
library(RColorBrewer)

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

firstdayrank <- matrix("",nrow=9,ncol=136)

rownames(firstdayrank) <- firstcount[,1]
colnames(firstdayrank) <- colnames(editedshowmatrix)[1:136]

for(i in 1:9){
  for(j in 1:136){
    if(length(which(firstcount[i,1] == editedshowmatrix[,j])) > 0){
      firstdayrank[i,j] <- which(firstcount[i,1] == editedshowmatrix[,j])
    }
  }
}

############
#Figure 1:
#Podcasts who have been in the top spot

firstdayplot <- melt(firstdayrank[c(1,3,4,8,7,9,5,6,2),])
colnames(firstdayplot) <- c("Show","Days","Rank")

ggplot(data=firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank)),group=Show,color=Show)) +
  geom_line(stat="identity",size=1.25) + 
  geom_point(stat="identity",size=2) +
  scale_y_reverse(limits = c(99,1)) + scale_color_manual(values=brewer.pal(9,"Paired")) + theme_bw()
ggsave("/Users/salianij/Desktop/Coding/Images/Podcast_Project2/Long_Timeline_Total.pdf",width=40,height=15,units="in")

############
#Figures 2-10: Individual timeline maps for each podcast

############################
#Excess

xplot1 <- c(as.numeric(as.Date(rownames(test)[131])),as.numeric(as.Date(rownames(test)[30])),
            as.numeric(as.Date(rownames(test)[15])),as.numeric(as.Date(rownames(test)[1])),
            as.numeric(as.Date(rownames(test)[6])),as.numeric(as.Date(rownames(test)[60])),
            as.numeric(as.Date(rownames(test)[25])),as.numeric(as.Date(rownames(test)[6])),
            as.numeric(as.Date(rownames(test)[65])))-10
xplot2 <- xplot1 + 15




