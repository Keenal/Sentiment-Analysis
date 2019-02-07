#Install the twitteR Package
install.packages("twitteR")

#Load the twitteR package using the library command
library("twitteR")

#Install the bitops Package
install.packages("bitops")

#Load the bitops package using the library command
library("bitops")

#Install the RCurl Package
install.packages("RCurl")

#Load the RCurl package using the library command
library("RCurl")

#Get the api key from twitter developer's account
API_key <- "xxx"

#Get the api secret key from twitter developer's account
API_secret_key <- "xxx"

#Get the access token from twitter developer's account
Access_token <- "xxx"

#Get the access token secret from twitter developer's account
Access_token_secret <- "xxx"

#you're given twitter authentication here
setup_twitter_oauth(API_key, API_secret_key, Access_token, Access_token_secret)

#use this to display 4000 tweets
options(max.print=4000)

#give search strings for the first parameter for twitter to get those tweets, n represents the number of tweets and lang represents the language
gather_tweets <- searchTwitter("medicare", n = 4000, lang = "en")

#display the results
gather_tweets

#these tweets are outputed in a list format, in order to get them into excel, you need to convert the list format into a data frame format
#install the plyr library (this library is intended to convert to data frame format)
library(plyr) 

#once the library has been installed, it takes our list from gather_tweets and puts it into data frame format
tweets.df = ldply(gather_tweets, function(t) t$toDataFrame())

#takes the data frame format and writes it to a csv file
write.csv(tweets.df, file = "newfile.csv")

