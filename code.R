library(tidyverse)
library(dslabs)
head(murders)

murders %>% mutate(population = population/10^6) %>% 
  ggplot(aes(population, total, color = region)) + 
  geom_point() + 
  ggtitle("Population and Total Gun Murders") + 
  xlab("Population in millions") + 
  ylab("Total Gun Murders")
