library(readxl)
library(dplyr)

responses <- read_excel("survey/responses.xlsx")
responses




responses$Age <- factor(responses$Age)
responses$Sex <- factor(responses$Sex)
responses$School <-factor(responses$School)
responses$Course <-factor(responses$Course)

responses$Age
responses$Sex
responses$School
responses$Course

barplot(table(responses$Age), main = "Age")
pie(table(responses$Sex), main = "Sex")
barplot(table(responses$School), main = "School")


