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

myt <- expression(bold(FTIR ~Spectra))
p <- plotSpectra(ssp, which = c(1, 2, 3, 4, 5, 6, 7), offset = 2, yrange = c(0,14))
p <- p + ggtitle(myt) + coord_cartesian(xlim = c(600, 2000))
p 

