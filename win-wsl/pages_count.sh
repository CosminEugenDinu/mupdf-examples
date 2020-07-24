#!/bin/bash

# This script reads input type windows file path (like "C:\Users\some doc.pdf")


printf "\n  Welcome to PDF pages_count!\n\n"

old_ifs="$IFS"
IFS=$'\n'

count=0
while true; do

    count=$((count+1))

    printf "%s\n" ' -------------------------------------'
    printf       "| $count. Drag a pdf file and press Enter. | \n"
    printf "%s\n" ' -------------------------------------'

    # user input from drag file in cmd
    read -r doc_path

    # this_dir="$(pwd)"
    this_file=$0
    this_dir=${this_file%/*}
    # one directory up
    up_dir=${this_dir%/*}
    program_path="$up_dir/examples/pages_count"


    # backslash to slash
    doc_path=${doc_path//\\/\/}
    # remove quotes
    doc_path=${doc_path//\"/}
    # change C: to /mnt/c
    doc_path=${doc_path/C:/\/mnt\/c}

    pages=$($program_path $doc_path)

    printf "\n Total pages: %s\n" $pages
    printf "%s\n" ' -----------------------'
    printf       "| Ctrl+C or Esc to cancel|\n"
    printf "%s\n" ' -----------------------'

done

IFS=$old_ifs