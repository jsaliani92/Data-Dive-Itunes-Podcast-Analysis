#Code for 9 plots of top podcasts


xplot1 <- as.numeric(as.Date(rownames(test)[1]))-10
xplot2 <- as.numeric(as.Date(rownames(test)[51]))-10
yplot1 <- -40
yplot2 <- yplot1-50

trueorder2 <- c(1,3,4,8,7,9,5,6,2)  

#Before using this, check the Timeline Top Podcast true order code

for(i in 1:9){
  
  interest <- firstcount[trueorder2[i],1]
  ggplot(firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank)),group=Show)) +
    geom_line(data=firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank))),stat="identity",size=1.25,colour="#808080") + 
    geom_point(data=firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank))),stat="identity",size=2,colour="#808080") +
    geom_line(data=firstdayplot[which(firstdayplot[,1] == interest),],
              aes(x=as.Date(Days),y=as.numeric(as.character(Rank))),
              size=6,colour=brewer.pal(10,"Paired")[i+1],
              stat="identity") + 
    geom_point(data=firstdayplot[which(firstdayplot[,1] == interest),],
               aes(x=as.Date(Days),y=as.numeric(as.character(Rank))),
               size=6,colour=brewer.pal(10,"Paired")[i+1],
               stat="identity") +
    annotation_custom(images[[i]],xmin=xplot1, xmax=xplot2,ymin=yplot2, ymax=yplot1) +
    scale_y_reverse(limits = c(99,1)) + theme_bw() + 
    ylab("Itunes Rankings") + xlab("2017") + theme(axis.title.y = element_text(size=25),axis.title.x = element_text(size=25)) 
  ggsave(paste0("/Users/salianij/Desktop/Coding/Images/Podcast_Project2/Long_Time_Line_",interest,".pdf"),width=40,height=15,units="in")
}

