#!/bin/bash
FILES=$(find ~/Documents/TL-Pictures -type f -name '*.JPG')
# echo "$FILES"

for f in $FILES; do 
    echo "$f"
    # echo "${f%.JPG}"
    mv "$f" "${f%.JPG}.jpg"
done


