acsData <- read.csv("data/acs-14-1yr-s0201.csv")
#Using the dplyr package, use the 6 different operations to analyze/transform 
#the data - GroupBy, Summarize, Mutate, Filter, Select, and Arrange – 
#Remember this isn’t just modifying data, you are learning about 
#your data also – so play around and start to understand your dataset 
#in more detail
library(dplyr)
by_cyl <- acsData %>% group_by(Id)
by_cyl
filterData <- filter(acsData, Id2 >= 5000)
filterData
mutateData <- acsData %>% mutate(HSDegree_new = HSDegree + 10)
mutateData
select(mutateData,Id,Id2,RacesReported,HSDegree,HSDegree_new)
arrange(mutateData,Id,HSDegree_new,HSDegree)
acsData %>% group_by(RacesReported) %>% summarise()

#Using the purrr package – perform 2 functions on your dataset.  
##You could use zip_n, keep, discard, compact, etc.
install.packages("purrr")
#Use the cbind and rbind function on your dataset
#Split a string, then concatenate the results back together