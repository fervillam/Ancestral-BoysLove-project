
#Installing required packages
if(!require("ape")){install.packages("ape")}
if(!require("ape")){install.packages("rexpokit")}
if(!require("ape")){install.packages("cladoRcpp")}
if(!require("ape")){install.packages("devtools", dependencies = TRUE)}

library(ape)
library(rexpokit)
library(cladoRcpp)
library(devtools)

devtools::install_github(repo="nmatzke/BioGeoBEARS", INSTALL_opts="--byte-compile")
