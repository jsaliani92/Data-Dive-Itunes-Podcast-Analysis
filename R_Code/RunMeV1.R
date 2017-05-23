########################
#Run Me

path <- "/Users/salianij/Desktop/Coding/R/Podcast_Project2/"
setwd(path)
files <- match(c("Input_and_Edit_Data.R",
           "Input_and_Edit_Images.R",
           "Combined_Timeline_Visual.R",
           "Individual_Top_9_Podcast_Visual_Code.R"),dir())

for(p in 1:4){
setwd(path)
source(paste0(path,dir()[files[p]]))
}