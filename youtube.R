#install voson social media lab package to get youtube data
library(vosonSML)

#get google developer api key
apikey <- "xxx"

key <- AuthenticateWithYoutubeAPI(apikey)

#collect data using youtube video ID
video <- c('enuw-sexHeM', 'dNB8xPHwsyg')

ytdata <- CollectDataYoutube(video, key, writeToFile = FALSE)

str(ytdata)

write.csv(ytdata, file='yt.csv', row.names = FALSE)
