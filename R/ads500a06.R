library(dplyr)
library(car)
attach(Book2)

# the association of primary fuel tailpipe carbon dioxide emissions in grams per mile to  annual primary-fuel petroleum consumption in barrels.
# after controlling for combined miles-per-gallon for the primary fuel type, vehicle manufacturer, make, engine displacement, engine cylinders, 
# combined luggage and passenger volume in cubic feet, vehicle type, transmission type, and primary fuel type. 

mmodel <- lm(co2TailpipeGpm ~ displ + cylinders + volume)
summary(mmodel)
vif(mmodel)

mmodel <- lm(co2TailpipeGpm ~ displ + cylinders + volume + barrels08 + comb08)
summary(mmodel)
vif(mmodel)


Book2 %>%
  select(co2TailpipeGpm, barrels08, make_id, comb08, displ, cylinders, volume, vehtype, emissionscat, prifueltype, transtype_id) %>%
  cor(,method = "pearson")

Book2 %>%
  select(co2TailpipeGpm, displ, cylinders, volume) %>%
  cor(,method = "pearson")


plot(mmodel)
