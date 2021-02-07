library(PerformanceAnalytics)
library(boot)

# Basic data indicators
exploratory <- function(x) {
  print("-----------------------")
  print("mean")
  print(mean(x))
  print("-----------------------")
  print("trimmed mean 15%")
  print(mean(x,0.15))
  print("-----------------------")
  print("median")
  print(median(x))
  print("-----------------------")
  print("quantile")
  print(quantile(x))
  print("-----------------------")
  print("variability")
  print(var(x))
  print("-----------------------")
  print("standard deviation")
  print(sd(x))
  print("-----------------------")
  print("skewnes")
  print(skewness(x))
}

#
metric <- Book2$barrels08
metric_label <- "barrels08"
#
metrics <-c(Book2$barrels08, Book2$co2TailpipeGpm)
for (m in seq_along(metrics)) {
  print(m)
}


exploratory(metric)

# Plots

hist(metric)

counts <-table(metric)
barplot(counts)

boxplot(metric)
