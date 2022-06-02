library(ggplot2)
library(tidyverse)
library(openxlsx)
library(ggthemes)

df<-read.csv("./abv_below_metric - Master List.csv")
df
mainPlot<-ggplot(df,aes(gamePerc,abvBel))+
  xlim(0,1)+
  ylim(-1,1)+
  geom_point(aes(color=Players),size=3)+
  geom_hline(yintercept=0)+
  labs(x="Percentage of Games Played",y="GmSc Variance",title="GmSc Variance Among NBA Players 2020-2021")+
  theme_fivethirtyeight()+
  theme(axis.title = element_text())
mainPlot

