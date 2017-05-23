########################
#Run Me

paths <- "/Users/salianij/Desktop/Coding/R/Podcast_Project2/"
setwd(paths)
files <- match(c("Input_and_Edit_Data.R",
           "Input_and_Edit_Images.R",
           "Identifying_Podcasts_General.R",
           "Input_Shows_Of_Interest.R",
           "Identifying_Podcasts_General_2.R",
           "Combined_Timeline_Visual_General.R",
           "Individual_Podcast_Visual_Code_General.R",
           "Stat_Code_1.R",
           "Output_Tables.R",
           "Stat_Code_2.R"),dir())



#Section for identifying shows of interest


for(p in 1:10){
setwd(paths)
source(paste0(paths,dir()[files[p]]))
}

formattable(outputlist[[1]][,c(7,1:6)], list(
  ##############
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
  ##############
)
formattable(outputlist[[2]][,c(7,1:6)], list(
  ##############
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
  ##############
)