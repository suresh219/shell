#!bin/bash

#Write a shell script that renames all files in the current directory that end in ".jpg" to begin with
#today's date in the following format: YYYY­MM­DD. For example, if a picture of my cat was in
#the current directory and today was October 31, 2016 it would change name from "mycat.jpg" to
#"2016­10­31­mycat.jpg"

FILES=$(ls *.jpg)
DATE=$(date +%F)

for FILE in $FILES
  do 
   echo "renaming files $DATE-$FILE"
   mv $FILE $DATE-$FILE
  done
