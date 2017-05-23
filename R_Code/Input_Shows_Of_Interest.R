#################@@@@@@####
#Input podcasts of interest

#identify podcasts of interest
uniqueshows

#use lower case show titles and spaces
IDS <- c("Lovett or Leave It",
         "Pod Save America",
         "Pod Save the People",
         "Pod Save the World",
         "With Friends Like These")

showsofinterest <- uniqueshows[match(IDS,uniqueshows)]