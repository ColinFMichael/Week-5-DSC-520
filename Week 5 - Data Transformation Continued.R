#install.packages("readxl")

# Assignment: Test Scores Week 4
# Name: Colin Michael
# Date: 2021-09-30

library(readxl)
library(dplyr)

setwd("/Users/colinmichael/Desktop/Data Science/DSC520/")


housing_df <- read_excel("week-7-housing.xlsx")

housing_df

housing_df_filter<- housing_df %>% 
  filter(sitetype == "R1")

housing_df_select <- housing_df %>% 
  select(addr_full, contains("NE"))

housing_df_mutate <- mutate(housing_df, totalbath = bath_full_count + bath_half_count + bath_3qtr_count)

housing_df_summarize_group<- housing_df %>%
  group_by(zip5) %>%
  summarize(n())

housing_df_ordered<- housing_df %>%  
  arrange(desc('Sale Price'))

library (purrr)

housing_df %>% keep(~mean(housing_df$bedrooms) > 3)

compact(housing_df)

test_setdf <- data.frame(x1= c(1,2,3),
                         x2 =c(4,5,6),
                         x3 = c(7,8,9))
test_setdf
x4 <- c(8,7,6)

test_setdfnew <- cbind(test_setdf, x4)
test_setdfnew

test_setdfnew2 <- rbind(test_setdf, x4)
test_setdfnew2

teams <- c ("New England Patriots", "New York Giants", "New York Jets", "Buffalo Bills")

teams2<- strsplit(teams, "New")
teams2







