library(twitteR)
library(rtweet)
library(dplyr)
library(tidyr)
library(tidytext)

consumer_key = "Xx2I3uOuc37d4xOPwRsqRurq9"
consumer_secret = "Fk0GhHP6VbMqFIKkbinMPOxNJhDHRgZmTWoMMLtCorEagLPHkw"
access_token = "1273925585782206464-ZKEvAESulHryXIfvo0LwOMkwDtJzcr"
access_secret = "S7V2sQvRpQS9SqrotfuV2RqS8kvEhMVp1XRz6XBfw5MHh"

setup_twitter_oauth(consumer_key ,consumer_secret, access_token, access_secret)
twitter_token <- create_token(app='CounterInitBlaster',consumer_key,consumer_secret,set_renv = TRUE)

tw = twitteR::searchTwitter('#COVID19', n=100)

d = twitteR::twListToDF(tw)

print(d['text'])

country_1 <- twitteR::searchTwitter('#India',n=100)
country_2 <- twitteR::searchTwitter('#Portugal',n=100)

show(country_1)
show(country_2)

