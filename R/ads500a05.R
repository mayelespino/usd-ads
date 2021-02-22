library(dplyr)
attach(Book2)

# the association of primary fuel tailpipe carbon dioxide emissions in grams per mile to  annual primary-fuel petroleum consumption in barrels.
# after controlling for combined miles-per-gallon for the primary fuel type, vehicle manufacturer, make, engine displacement, engine cylinders, 
# combined luggage and passenger volume in cubic feet, vehicle type, transmission type, and primary fuel type. 

#
Book2 %>%
  select(co2TailpipeGpm, barrels08, make_id, comb08, displ, cylinders, volume, vehtype, emissionscat, prifueltype, transtype_id) %>%
  cor(,method = "pearson")

plot(barrels08, co2TailpipeGpm, main = "scatter plot")
cor(barrels08, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ barrels08)
summary(modl1)


plot(comb08, co2TailpipeGpm, main = "scatter plot")
cor(comb08, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ barrels08)
summary(modl1)

plot(make_id, co2TailpipeGpm, main = "scatter plot")
cor(make_id, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ make_id)
summary(modl1)

#################
plot(displ, co2TailpipeGpm, main = "scatter plot")
cor(displ, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ displ)
summary(modl1)
abline(modl1, col=2, lwd=3)
coef(modl1)
confint(modl1)
anova(modl1)

plot(cylinders, co2TailpipeGpm, main = "scatter plot")
cor(cylinders, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ cylinders)
summary(modl1)
abline(modl1, col=2, lwd=3)
coef(modl1)
confint(modl1)
anova(modl1)

plot(volume, co2TailpipeGpm, main = "scatter plot")
cor(volume, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ volume)
summary(modl1)
abline(modl1, col=2, lwd=3)
coef(modl1)
confint(modl1)
anova(modl1)

####################
plot(emissionscat, co2TailpipeGpm, main = "scatter plot")
cor(emissionscat, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ barrels08)
summary(modl1)

plot(prifueltype, co2TailpipeGpm, main = "scatter plot")
cor(prifueltype, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ prifueltype)
summary(modl1)

plot(transtype_id, co2TailpipeGpm, main = "scatter plot")
cor(transtype_id, co2TailpipeGpm)
modl1 <- lm(formula = co2TailpipeGpm ~ transtype_id)
summary(modl1)


