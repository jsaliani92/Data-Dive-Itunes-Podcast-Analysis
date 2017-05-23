#plot that puts in the image of the podcast squares

#######################
#Load images


library(ggplot2)
library(png)
library(gridExtra)
library(grid)

library(emoGG)
library(lazyeval)
library(ggplot2)
library(RColorBrewer)
library('devtools')

#######################
#Test GGPLOT image

ggplot(data=firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank)),group=Show,color=Show)) +
  geom_line(stat="identity",size=1.25) + 
  geom_point(stat="identity",size=2) +
  scale_y_reverse(limits = c(99,1)) + scale_color_manual(values=brewer.pal(9,"Paired")) + theme_bw()


ggplot(data=firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank)),group=Show,color=Show)) +
  geom_line(stat="identity",size=1.25) + 
  geom_point(stat="identity",size=2) +
  scale_x_date() +
  scale_y_reverse(limits = c(99,1)) + 
  annotation_custom(images[[1]],xmin=as.numeric(as.Date(rownames(test)[35])), xmax=as.numeric(as.Date(rownames(test)[45])),ymin=-as.numeric(30), ymax=-as.numeric(20)) +
  annotation_custom(images[[2]],xmin=as.numeric(as.Date(rownames(test)[20])), xmax=as.numeric(as.Date(rownames(test)[30])),ymin=-as.numeric(50), ymax=-as.numeric(40)) +
  annotation_custom(images[[3]],xmin=as.numeric(as.Date(rownames(test)[39])), xmax=as.numeric(as.Date(rownames(test)[49])),ymin=-as.numeric(50), ymax=-as.numeric(40)) +
  scale_color_manual(values=brewer.pal(9,"Paired")) + theme_bw() 
#ggsave("/Users/salianij/Desktop/Coding/Images/Podcast_Project2/Long_Timeline_Total.pdf",width=40,height=15,units="in")





