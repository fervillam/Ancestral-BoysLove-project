#!/bin/bash
cd Documents/Ancestral-BoysLove-Project #Setting work directory

sudo apt-get install libxml2-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
sudo apt install python2
sudo apt update
sudo apt install curl
sudo add-apt-repository universe
sudo apt update
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py # Fetch get-pip.py for python 2.7 
python2 get-pip.py
python2 -m pip install lagrange


R #Run R console
  Rscript Graph-Trees.R
  Rscript Ancestral-areas-R
  
  q() #Exit R console and returning to bash
