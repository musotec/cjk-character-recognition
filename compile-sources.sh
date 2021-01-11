#!/bin/bash
# Tom Fuller - 1/9/2021

# set file name
FILE_NAME=compiled.bib

# delete any already existing file. without warning, like a rebel. 
rm "$FILE_NAME"

# iterate over references directory for any .bib files
for f in references/*.bib; do
    # print file name and arrow indicating processing...
    printf "$f -> "
    # parse the name of the reference from the bib file
    NAME=$(echo "$f" | sed -E 's/\/*.bib//g' | sed -E 's/references\///g')
    # load the data from the source bib files
    DATA=$(cat "$f")
    # and pipe it through sed, replacing whatever reference name is there with the file name and add to compiled list.
    echo "$DATA" | sed -r -e '0,/,/{s/@*\{((\S|\s)+[^,])/{'$NAME'/g}' >> "$FILE_NAME"
    # echo back name to indicate work done
    echo "$NAME"
done
