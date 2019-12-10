library(tm) 
library(tidyverse)
library(ggplot2) 
library(wordcloud) 
library(stm)
library(youtubecaption)

get_caption("https://www.youtube.com/watch?v=9kEB5pqWpJw", savexl= T, openxl= T)




get_caption("https://www.youtube.com/watch?v=60XxX5r2_XI", savexl= T, openxl= T)



get_caption("https://www.youtube.com/watch?v=sbE-emYnHJk", savexl= T, openxl= T)


debate_responses<-Corpus(VectorSource(debate_responses$Response))
debate_responses <- DocumentTermMatrix(debate_responses,
                                       control = list(stopwords = TRUE,
                                                      tolower = TRUE,
                                                      removeNumbers = TRUE,
                                                      removePunctuation = TRUE))


frequency <- colSums(as.matrix(debate_responses))
debate_responses_ordered <- debate_responses[,order(frequency, decreasing = T)]
inspect(debate_responses_ordered[1:5,1:5])

sorted_responses <- sort(frequency, decreasing = T)


temp<-textProcessor(documents = debate_responses_df$Response, metadata = debate_responses_df)

meta<-temp$meta
vocab<-temp$vocab
docs<-temp$documents

out <- prepDocuments(docs, vocab, meta)

docs<-out$documents
vocab<-out$vocab
meta <-out$meta
