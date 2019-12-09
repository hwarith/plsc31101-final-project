
## Short Description

This code analyzes and visualises Jeremy Corbyn's and Boris Johnson's responses to questions posed during 3 debates held prior to the 2019 UK general election.

## Dependencies

List what software your code depends on, as well as version numbers, like so:.

1. R, 3.6.1
2. Package - tidyverse
3. Package - wordcloud
4. Package - tidytext
5. Package - tm
6. Package - stm
7. Package - ggplot2
8. Package - getcaption

## Files

#### /

1. Narrative.Rmd: Provides a 3-5 page narrative of the project, main challenges, solutions, and results.
2. Narrative.pdf: A knitted pdf of Narrative.Rmd. 
3. Slides.pptx: Slides for my lightning talk.

#### Code/
1. 01_cleaning_pre_processing.R: Collects data from youtube API and preprocesses the final data frame I created for sentiment analysis and the topic model.
2. 02_analysis.R: Conducts descriptive analysis of the data, producing the tables and visualizations found in the Results directory.
3. 03_Final_Project_Code.Rmd - The R markdown document containing all my code. I developed my code in this file.

#### Data/

1. Plain Text Transcripts - Folder contains 3 plain text transcripts of each debate.
2. Scraped Captions - Folder contains 3 .csv files of closed captions scraped from youtube.
3. Debate_Data.csv: The final Analysis Dataset derived from the raw data above and manuall coded. Each observation is a unique responses from each candidate and it includes the following variables:
    - *Date*: Date the debate took place
    - *Event*: The name of the debate
    - *Speaker*: The Candidate speaking
    - *Question*: The question to which the candidate is responding
    - *Response*: The candidate's response
    
#### Results/
1. 01_Wordcloud.jpg - A wordcloud of words used during the debate
2. 02_Sentiments_Overall.jpg - Sentiments of the documents overall
3. 03_Sentiments_Candidate.jpg - Sentiments of the documents by candidate
4. 04_Boxplot.jpg - A boxplot showing how sentiments varied across each candidate and event
5. 05_Topics.jpg - The topics produced by the unsupervised topic model
6. 06_Progress.jpg - Expected proportions for each candidate for topic 1
7. 07_Poverty - Expected proportions for each candidate for topic 2
8. 08_Health - Expected proportions for each candidate for topic 3
9. 09_Referenda_Union - Expected proportions for each candidate for topic 4
10. 10 - Expected proportions for each candidate for topic 5

## More Information

Author name: Hani Warith
Email: hwarith[at]uchicago.edu 

Date of the British general election: December 12, 2019

Thank you for visiting my repository! 


