
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

