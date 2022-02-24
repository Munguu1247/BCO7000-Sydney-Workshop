#Load the package

library(tidyverse)

data(mpg)

summary(mpg)

head(mpg)

head(mpg, 3)

install.packages("knitr")

library(knitr)

kable(mpg[1:5,1:3])
kable(mpg[2:10,2:5])
kable(mpg[5:10,])

#Create a data visualisation

ggplot(mpg, aes(displ, hwy)) + 
  geom_point(colour = "red")

ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

#Facetting

ggplot(mpg, aes(displ, hwy)) + 
  geom_point() +
  facet_wrap(~class)

ggplot(mpg, aes(displ, hwy, colour = trans)) + 
  geom_point() +
  facet_wrap(~class)

ggplot(mpg, aes(displ, hwy, colour = trans)) + 
  geom_point() +
  facet_wrap(~class) +
  labs(x = "Discplacement", y = "Highway Miles", colour = "Transmission", title = "Point Graph" , caption = "Figure 1")
