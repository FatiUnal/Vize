url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download(url, destfile = "200401011/MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")


maps <- read.csv2("200401011/MapsThatChangedOurWorld_StoryMap_Data.csv",header = TRUE)

maps$Latitude <- gsub("N","",(maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)

idx <- which(grepl("W",maps$Longitude))
