install.packages("dyplr")
library(dplyr)

summary(Book2)
attach(Book2)

boxplot(comb08)
boxplot(barrels08)
boxplot(co2TailpipeGpm)
boxplot(cylinders)
boxplot(emissionscat)

plot(barrels08 ~ comb08)
plot(barrels08 ~ co2TailpipeGpm)
plot(comb08 ~ co2TailpipeGpm)
plot(cylinders ~ co2TailpipeGpm)

Book2 %>%
  select(comb08, barrels08, co2TailpipeGpm, cylinders) %>%
  summary()

Book2 %>%
  select(comb08, barrels08, co2TailpipeGpm, cylinders) %>%
  boxplot()


Book2 %>%
  select(comb08, barrels08, co2TailpipeGpm, cylinders) %>%
  filter(cylinders != "") %>%
  summary()

Book2 %>%
  select(comb08, barrels08, co2TailpipeGpm, cylinders) %>%
  filter(cylinders != "") %>%
  boxplot()
