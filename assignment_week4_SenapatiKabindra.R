df <- read.csv("data/scores.csv")
df
#1.##What are the observational units in this study?
##Count Score Section
#2. Identify the variables mentioned in the narrative paragraph and determine which are categorical and quantitative?

Score -- quantitative
Section -- categorical

#3.Create one variable to hold a subset of your data set that contains only the Regular Section and one variable for the Sports Section.

sportsData <- subset(df, Section == 'Sports',select = c(Score,Count))
sportsData
RegularData <- subset(df, Section == 'Regular',select = c(Score,Count))
RegularData

#4. Use the Plot function to plot each Sections scores and the number of students achieving that score. Use additional Plot Arguments to label the graph and give each axis an appropriate label.

plot(sportsData,main="Sports Data")
plot(RegularData,main="Regular Data")

##Comparing and contrasting the point distributions between the two section, 
##looking at both tendency and consistency: 
##Can you say that one section tended to score more points than the other? 
##Justify and explain your answer.

#4. Based on the plot comparision, the sports section students have obtained more scores than the regular section students.

#2.aUse the apply function on a variable in your dataset
#2014 American Community Survey 
acsData - read.csv("data/acs-14-1yr-s0201.csv")
acsData
apply(acsData[c(2)], 1, sum)
#b.Use the aggregate function on a variable in your dataset
head(acsData)
count <- aggregate(acsData$HSDegree, by = list(acsData$RacesReported), FUN = length)
count
#c.Use the plyr function on a variable in your dataset – 
#more specifically, I want to see you split some data, 
#perform a modification to the data, and then bring it back together
install.packages("tidyr")
library(dplyr)
library(tidyr)
newDataset <- acsData %>% separate(Geography, c('city',',', 'State'))
newDataset


