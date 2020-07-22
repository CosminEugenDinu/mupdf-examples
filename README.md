# mupdf-examples
Examples of using mupdf (fitz) library.

## install mupdf

```sh
wget https://mupdf.com/downloads/archive/mupdf-1.17.0-source.tar.gz
tar -zxvf mupdf-1.17.0-source.tar.gz

cd mupdf-1.17.0-source

export CFLAGS="-fPIC"

# install some prerequirement
sudo apt install build-essential

make HAVE_X11=no HAVE_GLFW=no HAVE_GLUT=no prefix=/usr/local
sudo make HAVE_X11=no HAVE_GLFW=no HAVE_GLUT=no prefix=/usr/local install

cd ..

```

### mupdf documentation
https://www.mupdf.com/docs/index.html

https://ghostscript.com/~robin/mupdf_explored.pdf

https://ghostscript.com/~robin/mupdf_explored.epub

## License
mupdf-examples is distributed under GNU GPL V3. Because you will implicitely also be using MuPDF, its license GNU AFFERO GPL V3 applies as well. Copies of both are included in this repository.
