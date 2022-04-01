library(tidyverse)
library(nycflights13)

getwd()
basket <- read.csv("Web_Baskets_2020.csv", header = TRUE, sep = ";")
basket

data <- basket(article_cat)
data%>%group_by(article_cat)%>%
  summarise(sum=sum(quantity))%>%
  ungroup()%>%
  arrange(desc(sum))%>%
  top_n(n=5)

data$date <- as.Date(data$date)

data%>%filter()
  group_by(date,article_cat,article_name)%>%
  summarise(sum=sum(quantity))%>%
  arrange(desc(sum))%>%
  ggplot





#group_cat <-basket %% group_by(article_cat)

basket_quan <- filter(group_cat, quantity %in% c(50,30,25,24,23))
basket_quan

(basket_quan <- arrange(basket_quan,desc(article_cat)))
basket_quan
group_cat <- group_by(data,date,article_cat,quantity)
group_cat
#summarise(group_cat, cal = n(),total_quantity = mean(quantity))
(group_cat_bal <- summarise(group_cat, cal = n(),quantity))
group_cat_bal
