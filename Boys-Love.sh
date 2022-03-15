#!/bin/bash
cd Documents/Ancestral-BoysLove-Project #Setting work directory

sudo apt-get install libxml2-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev

R #Run R console
  if(!require("ape")){install.packages("ape")} #Installing "ape" package
  if(!require("ape")){install.packages("rexpokit")}
  if(!require("ape")){install.packages("cladoRcpp")}
  if(!require("ape")){install.packages("devtools", dependencies = TRUE)}
  
  q() #Exit R console and returning to bash
