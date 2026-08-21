library('MASS') # required for ginv
library(multtest)
library(gplots)
library(compiler) #required for cmpfun
library("scatterplot3d")
source("gapit_functions.txt")

##########################Load files#################################################################
#Step 1: Set data directory and import files
myY  <- read.csv("Pheno.csv", head = TRUE)
myGD <- read.csv("Geno.csv", head = TRUE)
myGM <- read.csv("Map.csv" , head = TRUE)

#Step 2: Run GAPIT
myGAPIT <- GAPIT(
  Y=myY,
  GD=myGD,
  GM=myGM,
  PCA.total=3,
  model="BLINK"
)
