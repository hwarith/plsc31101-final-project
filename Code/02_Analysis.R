set.seed(29)

wordcloud(names(sorted_responses), sorted_responses, max.words=100, colors=brewer.pal(6,"Dark2"))
library(wordcloud2)

findAssocs(debate_responses, "brexit", 0.3)
findAssocs(debate_responses, "nhs", 0.3)

sorted_responses <- sort(frequency, decreasing = T)
sorted_responses

head(sorted_responses)

debate_responses_df<-debate_responses_df %>% 
  group_by(Speaker) %>% 
  filter(Speaker=="Jeremy Corbyn"|Speaker=="Boris Johnson") 

debate_responses_df %>%
  summarize(Mean_Sentiment=mean(sentiments))

ggplot(debate_responses_df, aes(x = sentiments))+
  geom_histogram(stat = "count")

ggplot(data = debate_responses_df, aes(x = sentiments)) +
  geom_histogram() + 
  facet_wrap( ~ Speaker)

ggplot(debate_responses_df, aes(x=Event, y=sentiments)) + 
  geom_boxplot() + facet_wrap( ~ Speaker)

model <- stm(docs, vocab, 5, data = meta, seed = 15, max.em.its = 15)

labelTopics(model)

labels <- c("Progress", "Poverty", "Health Care", " Referenda and Union", "Economy")

plot.STM(model, type="summary", custom.labels = labels, main="")

Speakers <- c("Corbyn", "Johnson")
plot.estimateEffect(prep, "Speaker", method = "pointestimate", topics = 1, printlegend = TRUE, labeltype = "custom", custom.labels = Speakers, main = "Progress", ci.level = .95, nsims=100)

Speakers <- c("Corbyn", "Johnson")
plot.estimateEffect(prep, "Speaker", method = "pointestimate", topics = 2, printlegend = TRUE, labeltype = "custom", custom.labels = Speakers, main = "Poverty", ci.level = .95, nsims=100)

Speakers <- c("Corbyn", "Johnson")
plot.estimateEffect(prep, "Speaker", method = "pointestimate", topics = 3, printlegend = TRUE, labeltype = "custom", custom.labels = Speakers, main = "Health Care", ci.level = .95, nsims=100)

Speakers <- c("Corbyn", "Johnson")
plot.estimateEffect(prep, "Speaker", method = "pointestimate", topics = 4, printlegend = TRUE, labeltype = "custom", custom.labels = Speakers, main = "Referenda and Union", ci.level = .95, nsims=100)

Speakers <- c("Corbyn", "Johnson")
plot.estimateEffect(prep, "Speaker", method = "pointestimate", topics = 5, printlegend = TRUE, labeltype = "custom", custom.labels = Speakers, main = "The Economy", ci.level = .95, nsims=100)