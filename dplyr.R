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


#filtering easily works with other techniques like or, and etc. example is below:

#example for not displaying flights which are delayed by 120 mins - both arrival and departure
(a<- filter(flights, !(arr_delay > 120 | dep_delay > 120)))
#or
(b<- filter(flights, arr_delay <= 120, dep_delay <=120))

#arrange()

#arrange can be used to provide ascending and descending 
#example

df <- tibble(x = c(5,2,NA))
arrange(df, x) #this puts the ascending order which is by default, if you want to use the descending order then you can simply use desc()

# select() operator - used to select variables

select(flights, year:day) #this performs selection of variables from year to day 

#to deselect few variables in the dataset, we can use the following

select(flights, -(year:day)) #this selects all the variables except from year to day

#to rename a variable in the dataset, simply use the following:
  
