install.packages("dyplr")
library(dplyr)
attach(Book2)

# the association of primary fuel tailpipe carbon dioxide emissions in grams per mile to  annual primary-fuel petroleum consumption in barrels.
# after controlling for combined miles-per-gallon for the primary fuel type, vehicle manufacturer, make, engine displacement, engine cylinders, 
# combined luggage and passenger volume in cubic feet, vehicle type, transmission type, and primary fuel type. 

#
Book2 %>%
  select(co2TailpipeGpm, barrels08, make_id, comb08, displ, cylinders, volume, vehtype, emissionscat, prifueltype, transtype_id) %>%
  cor(,method = "pearson")


Book2 %>%
  select(co2TailpipeGpm, barrels08, make_id, comb08, displ, cylinders, volume, vehtype, emissionscat, prifueltype, transtype_id) %>%
  cor(,method = "kendall")


help("cor")


