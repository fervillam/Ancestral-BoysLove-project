#!/bin/bash
cd Documents/Ancestral-BoysLove-Project #Setting work directory

sudo apt-get install libxml2-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
sudo apt install python2


R #Run R console
  Rscript Ancestral-areas-R
  
  q() #Exit R console and returning to bash
