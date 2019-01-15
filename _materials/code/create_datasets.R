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

### heartdisease -  FFTrees ------------------

set.seed(100)

heart_train <- heart.train
heart_test <- heart.test

write_csv(heart_train, path = "1_Data/heart_train.csv")
write_csv(heart_test, path = "1_Data/heart_test.csv")

###  house  - Housing data from king county US, https://www.kaggle.com/northon/king-county-house-data

house <- read_csv("https://raw.githubusercontent.com/therbootcamp/BaselRBootcamp_2018July/master/_sessions/_data//baselrbootcamp_data/kc_house.csv")

house <- house %>%
  sample_n(nrow(.))

house_train <- house[1:5000,]
house_test <- house[5001:6000,]

write_csv(house_train, path = "1_Data/house_train.csv")
write_csv(house_test, path = "1_Data/house_test.csv")


