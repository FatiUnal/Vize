url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")


maps <- read.csv2("MapsThatChangedOurWorld_StoryMap_Data.csv",header = TRUE)

maps$Latitude <- gsub("N","",(maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)

idx <- which(grepl("W",maps$Longitude))

maps$Longitude <- gsub("E","",maps$Longitude)
maps$Longitude <- gsub("W","",maps$Longitude)
maps$Longitude <- as.numeric(maps$Longitude)

maps$Year <- gsub("AD","",maps$Year)
maps$Year <- as.numeric(maps$Year)

hist(maps$Year, breaks = 10)

maps$Longitude[idx] <- maps$Longitude[idx]*-1

finalResult <- data.frame(Longitude = (maps$Longitude), Latitude = (maps$Latitude), Year=(maps$Year))

