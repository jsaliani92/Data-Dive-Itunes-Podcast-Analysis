
output1table <- as.data.frame(output1)
for(i in 1:dim(output1table)[1]){
  output1table[,i] <- as.numeric(as.character(output1table[,i]))
}

formattable(output1table[,c(7,1:6)], list(
  Top100=color_tile("white", "green"),
  Top50=color_tile("white", "green"),
  Top25=color_tile("white", "green"),
  Top10=color_tile("white", "green"),
  Top5=color_tile("white", "green"),
  Top1=color_tile("white", "green"),
  Mean_Rank = formatter(
    "span",
    style = x ~ ifelse(as.numeric(as.character(x)) < 10, 
                       style(font.weight = "bold"), NA)))
)


output2table <- as.data.frame(output2)

for(j in 1:6){
  output2table[,j] <- gsub("%","",output2table[,j])
}

for(i in 1:dim(output2table)[1]){
  output2table[,i] <- as.numeric(as.character(output2table[,i]))
}
formattable(output2table[,c(7,1:6)], list(
  Top100=color_tile("white", "green"),
  Top50=color_tile("white", "green"),
  Top25=color_tile("white", "green"),
  Top10=color_tile("white", "green"),
  Top5=color_tile("white", "green"),
  Top1=color_tile("white", "green"),
  Mean_Rank = formatter(
    "span",
    style = x ~ ifelse(as.numeric(as.character(x)) < 10, 
                       style(font.weight = "bold"), NA)))
)

outputlist <- vector("list",length=2)

outputlist[[1]] <- output1table
outputlist[[2]] <- output2table

