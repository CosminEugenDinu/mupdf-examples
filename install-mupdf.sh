#!/bin/bash

wget https://mupdf.com/downloads/archive/mupdf-1.17.0-source.tar.gz 
tar -zxvf mupdf-1.17.0-source.tar.gz 

cd mupdf-1.17.0-source 

export CFLAGS="-fPIC" 

# install some prerequirement
sudo apt install build-essential 

make HAVE_X11=no HAVE_GLFW=no HAVE_GLUT=no prefix=/usr/local 
sudo make HAVE_X11=no HAVE_GLFW=no HAVE_GLUT=no prefix=/usr/local install 

cd ..
rm mupdf-1.17.0-source.tar.gz
echo "mupdf is installed in /usr/local"
