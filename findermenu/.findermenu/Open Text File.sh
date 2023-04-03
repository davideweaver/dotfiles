#!/bin/bash

DEF_FILE_NAME="NewText"
FILE_EXT="txt"

# Default text file name.
filePath="${1}/${DEF_FILE_NAME}.${FILE_EXT}"
fileNo=1

# Try new names until a non-existing one is found.
while [ -f "${filePath}" ]
do
    filePath="${1}/${DEF_FILE_NAME}_${fileNo}.${FILE_EXT}"
    fileNo=$((fileNo+1))
done

# Create the text file.
touch "${filePath}"

# Open the file with TextEdit.
open -a "Visual Studio Code" "${filePath}"
