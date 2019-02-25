install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

#this is a massive dataset, to produce a tibble just do as following:

nycflights13::flights

View(flights) # with this option you'll be able to view the dataset ## very useful


#dplyr has 5 basic functions which can be used for data manipulation: let us see them one by one

#filter
filter(flights, month ==9, day==30)

(test <- filter(flights, month ==9, day==30)) #to view and save the filter in the variable test

View(test)

# remember in R equal to is ==


