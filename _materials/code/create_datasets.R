library(ISLR)
library(FFTrees)
library(tidyverse)
library(caret)

### college - ISLR ----------------------------

set.seed(100)

college <- College

college <- college %>%
  sample_n(nrow(.))

college_train <- college[1:500,]
college_test <- college[501:nrow(college),]

write_csv(college_train, path = "1_Data/college_train.csv")
write_csv(college_test, path = "1_Data/college_test.csv")


### Carseats - ISLR ----------------------------

set.seed(100)

carseats <- Carseats

carseats <- carseats %>%
  sample_n(nrow(.))

carseats_train <- carseats[1:100,]
carseats_test <- carseats[101:nrow(carseats),]

write_csv(carseats_train, path = "1_Data/carseats_train.csv")
write_csv(carseats_test, path = "1_Data/carseats_test.csv")


### heartdisease -  FFTrees

set.seed(100)

heart_train <- heart.train
heart_test <- heart.test

write_csv(heart_train, path = "1_Data/cheart_train.csv")
write_csv(heart_test, path = "1_Data/heart_test.csv")


