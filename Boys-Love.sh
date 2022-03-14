#!/bin/bash
cd home/Documents/Ancestral-BoysLove-Project #Setting work directory

R #Run R console
  if(!require("ape")){install.packages("ape")} #Installing "ape" package
  q() #Exit R console and returning to bash
  
sudo apt-get -y install python3-pip 
python3 -m pip install lagrange #Installing "lagrange" package

python3 #Run Python console
  exit() #Exit Python console and returning to bash
