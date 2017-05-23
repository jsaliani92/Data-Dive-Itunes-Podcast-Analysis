#plot that puts in the image of the podcast squares

#######################
#Load images


library(png)
library(gridExtra)
library(grid)
library(emoGG)
library(lazyeval)
library(ggplot2)
library('devtools')
library(RColorBrewer)


#Correct overall timeline

ggplot(data=firstdayplot,aes(x=as.Date(Days),y=as.numeric(as.character(Rank)),group=Show,color=Show)) +
  geom_line(stat="identity",size=2) + 
  geom_point(stat="identity",size=5) +
  scale_x_date() +
  scale_y_reverse(limits = c(99,1))+ theme_bw()  + 
  theme(legend.position = c(0.15,0.4),legend.title=element_text(size=0),
        legend.text = element_text(size=35),
        legend.key = element_rect(size = 5),
        legend.key.size = unit(3, 'lines'))+
  scale_color_manual(values=brewer.pal(9,"Paired")) 
ggsave("/Users/salianij/Desktop/Coding/Images/Podcast_Project2/Long_Timeline_Total.pdf",width=40,height=15,units="in")



########################
#Excess
#annotation_custom(images[[1]],xmin=as.numeric(as.Date(rownames(test)[35])), xmax=as.numeric(as.Date(rownames(test)[45])),ymin=-as.numeric(30), ymax=-as.numeric(20)) +
#  annotation_custom(images[[2]],xmin=as.numeric(as.Date(rownames(test)[23])), xmax=as.numeric(as.Date(rownames(test)[33])),ymin=-as.numeric(50), ymax=-as.numeric(40)) +
#  annotation_custom(images[[3]],xmin=as.numeric(as.Date(rownames(test)[38])), xmax=as.numeric(as.Date(rownames(test)[48])),ymin=-as.numeric(50), ymax=-as.numeric(40)) +
#  annotation_custom(images[[7]],xmin=as.numeric(as.Date(rownames(test)[126])), xmax=as.numeric(as.Date(rownames(test)[136])),ymin=-as.numeric(20), ymax=-as.numeric(10)) +
  



