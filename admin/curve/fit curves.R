library(data.table);library(bit64)
setwd("d:\\Archives\\Git\\chase\\admin\\curve\\")
learn.rate.start=1e-6 # the start point of learn rate for fitting curves (vary from curve file to curve file)
for.opt=T # T if the fitting is for otptimization curves

source("d:\\Archives\\Git\\curve-simulation\\curve simulator from ad.R")