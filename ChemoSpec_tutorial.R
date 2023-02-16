rm(list=ls(all=TRUE))
set.seed(1234)

library(ChemoSpec)
library(ggplot2)

ssp <- files2SpectraObject(
  gr.crit = c("cf", "shr"),
  freq.unit = "cm",
  int.unit = "absorbance",
  descrip = "Rivers",
  fileExt = "\\.csv",
  debug = TRUE,
  sep = ",", header = TRUE)




