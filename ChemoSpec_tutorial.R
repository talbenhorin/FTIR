rm(list=ls(all=TRUE))
set.seed(1234)

library(ChemoSpec)
library(ggplot2)

ssp <- files2SpectraObject(
  gr.crit = c("cf", "shr"),
  gr.cols = c("red", "blue"),
  freq.unit = "cm",
  int.unit = "absorbance intensity",
  descrip = "River",
  out.file = "rivers",
  ... = t)

data(SrE.IR) 

ssp <- matrix2SpectraObject(
  gr.crit = NULL,
  gr.cols = c("auto"),
  freq.unit = "cm",
  int.unit = "absorbance intensity",
  descrip = "Cape Fear River",
  in.file = "cf.csv",
  out.file = "mydata",
  chk = TRUE)

