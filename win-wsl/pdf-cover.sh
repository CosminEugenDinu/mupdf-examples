#!/bin/bash

# This script reads input type windows file path (like "C:\Users\some doc.pdf")


printf "\n  Welcome to PDF pages_count!\n  Press Enter to begin."
read

count=0
while true; do

    count=$((count+1))

    printf "%s\n" ' -------------------------------------'
    printf       "| $count. Drag a pdf file and press Enter. | \n"
    printf "%s\n" ' -------------------------------------'

    folder="$(pwd)"
    read -r doc_path
    # only document name.ext
    doc_path=${doc_path##*\\}
    # get rid of last \" of name has spaces
    doc_path=${doc_path/\"/}
    doc_linux_path="$folder/$doc_path"

    pages=$(~/mupdf-examples/examples/pages_count "$doc_linux_path")

    printf "\n Total pages: %s\n" $pages
    printf "%s\n" ' -----------------------'
    printf       "| Ctrl+C or Esc to cancel|\n"
    printf "%s\n" ' -----------------------'

done