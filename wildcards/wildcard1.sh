#!bin/bash
A=$(ls *.jpg)
DATE=$(date +%F)
for files in $A
  do 
   echo "renaming file names ${DATE}-${files}"
   mv ${files}  ${DATE}-${files}
 done
