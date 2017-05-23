#This code will take inputs of episode and lengths, as well as rating totals and twitter followers:

############################
#Vector Creation Section

episodes <- vector("list",length(showsofinterest))

itunesranking <- vector(length=5)
twitterfollowing <- vector(length=5)
twitterhostfollowings <- vector(length=5)

############################
#Input Section

#input minute totals in 2016 for each podcasts
episodes[[1]] <- c(1,57,54,56,65,61,58,77,59)
episodes[[2]] <- c(1,51,56,52,41,82,64,66,61,37,53,70,134,57,63,66,67,64,71,52,73,67,69,53,69,59,69,54,67,64,72,65,69,72,63,66,25,76,128,74,63,70)
episodes[[3]] <- c(1,92,94,93,74)
episodes[[4]] <- c(1,57,49,61,43,54,50,57,55,40,47,35,38,44,42,49,30,51)
episodes[[5]] <- c(1,52,51,65,49,64,63,70,96,77,73,87,63,84,78)

#input per episode week schedule
releasesched <- c(1,2,1,1,1)

#twitterfollowing <- c(NA,126335,2865,NA,2783) #Many podcast shows don't have twitter pages
twitterhostfollowings <- c(260093,536318,810542,167707,1348349)
itunesranking <- c(2468,14543,743,3280,1307)


##################
#Analysis section

episodetotals <- vector(length=5)
episodemintotals <- vector(length=5)
episodeminaverages <- vector(length=5)

for(i in 1:5){
  episodetotals[i] <- length(episodes[[i]])
  episodemintotals[i] <- sum(episodes[[i]])
  episodeminaverages[i] <- sum(episodes[[i]]) / length(episodes[[i]])
}


expectedperweektotal <- round(sum(episodeminaverages * releasesched) / 60,2)



############################
#Plotting Section

#Convert the following plots to ggplot with podcast images

plot(episodetotals,episodeminaverages) #Content creation
plot(log10(itunesranking),log10(twitterhostfollowings)) #Audience Potential VS Ratings

#Try to plot the following plots on a timeseries
par(mfrow=c(2,3))
for(i in 1:5){
  plot.ts(episodes[[i]])
}


plot1 <- cbind(episodetotals,episodeminaverages,showsofinterest)
colnames(plot1) <- c("Episode_Totals","Episode_Averages","Shows")
plot2 <- cbind(itunesranking,twitterhostfollowings,showsofinterest)
colnames(plot2) <- c("Itunes_Ratings","Host_Twitter_Followings","Shows")

#Content Creation Plots

#Scatter Plot First
len <- 5
ggplot(data=as.data.frame(plot1),aes(x=as.numeric(as.character(Episode_Totals)),y=as.numeric(as.character(Episode_Averages)),colour = Shows)) + geom_point() +
  ylab("Average Length in Minutes") + xlab("Episodes Released") + guides(colour = FALSE) + 
  scale_x_continuous(limits=c(-2,50)) +
  scale_y_continuous(limits=(c(40,75))) +
  annotation_custom(images[[1]],xmin=as.numeric(plot1[1,1])-len, xmax=as.numeric(plot1[1,1])+len,ymin=as.numeric(plot1[1,2])-len, ymax=as.numeric(plot1[1,2])+len) +
  annotation_custom(images[[2]],xmin=as.numeric(plot1[2,1])-len, xmax=as.numeric(plot1[2,1])+len,ymin=as.numeric(plot1[2,2])-len, ymax=as.numeric(plot1[2,2])+len) +
  annotation_custom(images[[3]],xmin=as.numeric(plot1[3,1])-len, xmax=as.numeric(plot1[3,1])+len,ymin=as.numeric(plot1[3,2])-len, ymax=as.numeric(plot1[3,2])+len) +
  annotation_custom(images[[4]],xmin=as.numeric(plot1[4,1])-len, xmax=as.numeric(plot1[4,1])+len,ymin=as.numeric(plot1[4,2])-len, ymax=as.numeric(plot1[4,2])+len) +
  annotation_custom(images[[5]],xmin=as.numeric(plot1[5,1])-len, xmax=as.numeric(plot1[5,1])+len,ymin=as.numeric(plot1[5,2])-len, ymax=as.numeric(plot1[5,2])+len) +
  theme_bw()  
ggsave(paste0(outputpath,"Content_Released_Scatter.pdf"),width=9,height=9,units="in")

#Show Reach Potential
len <- 0.15
ggplot(data=as.data.frame(plot2),aes(x=as.numeric(as.character(Itunes_Ratings)),y=as.numeric(as.character(Host_Twitter_Followings)),colour = Shows)) + geom_point() +
  ylab("Twitter Following for Podcast Hosts") + xlab("Total Times Rated on 'Itunes'") + guides(colour = FALSE) + 
  scale_x_log10(limits=c(500,20000),breaks=c(1000,3000,15000)) +
  scale_y_log10(limits=c(100000,2000000),breaks=c(200000,500000,800000,1400000)) +
  annotation_custom(images[[1]],xmin=log10(as.numeric(plot2[1,1]))-len, xmax=log10(as.numeric(plot2[1,1]))+len,ymin=log10(as.numeric(plot2[1,2]))-len, ymax=log10(as.numeric(plot2[1,2]))+len) +
  annotation_custom(images[[2]],xmin=log10(as.numeric(plot2[2,1]))-len, xmax=log10(as.numeric(plot2[2,1]))+len,ymin=log10(as.numeric(plot2[2,2]))-len, ymax=log10(as.numeric(plot2[2,2]))+len) +
  annotation_custom(images[[3]],xmin=log10(as.numeric(plot2[3,1]))-len, xmax=log10(as.numeric(plot2[3,1]))+len,ymin=log10(as.numeric(plot2[3,2]))-len, ymax=log10(as.numeric(plot2[3,2]))+len) +
  annotation_custom(images[[4]],xmin=log10(as.numeric(plot2[4,1]))-len, xmax=log10(as.numeric(plot2[4,1]))+len,ymin=log10(as.numeric(plot2[4,2]))-len, ymax=log10(as.numeric(plot2[4,2]))+len) +
  annotation_custom(images[[5]],xmin=log10(as.numeric(plot2[5,1]))-len, xmax=log10(as.numeric(plot2[5,1]))+len,ymin=log10(as.numeric(plot2[5,2]))-len, ymax=log10(as.numeric(plot2[5,2]))+len) +
  theme_bw()  
ggsave(paste0(outputpath,"Audience_Reach_Scatter.pdf"),width=11,height=11,units="in")











