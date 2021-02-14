install.packages("janitor")
library(janitor)

tabyl(Book2, fuelType) %>%
  adorn_percentages("col") %>%
  adorn_pct_formatting(digits = 4)

#Good Graph!
install.packages("CGPfunctions")
library(CGPfunctions)
PlotXTabs(Book2, fuelType, co2TailpipeGpm, "side") 
PlotXTabs2(Book2, fuelType, co2TailpipeGpm) 

?PlotXTabs2



# ERROR
# https://cran.r-project.org/web/packages/vtree/vignettes/vtree.html
#install.packages("vtree")
#install.packages("mime")
#library(mime)
#library(vtree)
#vtree(fuelType,"fuelType")

# Not very useful in this case
xtabs(~ fuelType + co2TailpipeGpm, data = Book2)

library(CGPfunctions)
PlotXTabs(Book2, "fuelType", "co2TailpipeGpm") 
help("PlotXTabs")

library(dplyr)
my_summary <- Book2 %>%
  count(fuelType, co2TailpipeGpm, sort = TRUE)

my_summary

library(ggplot2)
ggplot(my_summary)


install.packages("dypl")
library(dplyr)
glimpse(Book2)

library(tibble)
glimpse(Book2$fuelType)

library(dplyr)
Book2 %>%
  distinct(fuelType)

Book2 %>%
  count(fuelType)

