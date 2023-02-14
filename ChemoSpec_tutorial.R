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

myt <- expression(bolditalic(Serenoa)~bolditalic(repens)~bold(Extract~IR~Spectra))
p <- plotSpectra(SrE.IR, which = c(1, 2, 14, 16), yrange = c(0, 1.6),
                 offset = 0.4, lab.pos = 2200)
p <- p + ggtitle(myt)
p # when using ggplot2, you have to "call" the object containing the plot

