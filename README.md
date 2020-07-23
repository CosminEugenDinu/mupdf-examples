# mupdf-examples
Examples of using mupdf (fitz) library.

## Install mupdf

```sh
git clone https://github.com/CosminEugenDinu/mupdf-examples.git
cd mupdf-examples
chmod +x install-mupdf.sh
./install-mupdf.sh
```
## How to compile examples
```sh
gcc -I/usr/local/include -o example \
	example.c \
	/usr/local/lib/libmupdf.a \
	/usr/local/lib/libmupdf-third.a \
	-lm
```

### mupdf documentation
https://www.mupdf.com/docs/index.html

https://ghostscript.com/~robin/mupdf_explored.pdf

https://ghostscript.com/~robin/mupdf_explored.epub

## License
mupdf-examples is distributed under GNU GPL V3. Because you will implicitely also be using MuPDF, its license GNU AFFERO GPL V3 applies as well. Copies of both are included in this repository.
