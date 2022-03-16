
setwd(getwd())

#Installing required packages
if(!require("ape")){install.packages("ape")}
if(!require("rexpokit")){install.packages("rexpokit")}
if(!require("cladoRcpp")){install.packages("cladoRcpp")}
if(!require("GenSA")){install.packages("GenSA")}
if(!require("devtools")){install.packages("devtools", dependencies = TRUE)}

library(ape)
library(rexpokit)
library(cladoRcpp)
library(GenSA)
library(devtools)

devtools::install_github(repo="nmatzke/BioGeoBEARS", INSTALL_opts="--byte-compile")

equal_BL_2x2 <- read.tree("Equal-BL-2x2.tre")
equal_BL_3x1 <- read.tree("Equal-BL-3x1.tre")

equal_areas <- getranges_from_LagrangePHYLIP("Equal-Area-distribution.data")
unequal_areas <- getranges_from_LagrangePHYLIP("Unequal-Area-distribution.data")

max_range_size <- 2

run_DEC <- define_BioGeoBEARS_run()

run_DEC$trfn <- equal_BL_2x2
run_DEC$geogfn <- equal_areas
