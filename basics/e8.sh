#!bin/bash

#Modify the previous script to accept an unlimited number of files and directories as arguments.

FILES=$@
for FILE in $FILES
 do
  if [ -f $FILE ]
  then
    echo "$FILE is a regular file"
  elif [ -d $FILE ]
  then
    echo "$FILE is a directory"
  else
    echo "$FILE is another tupe of file"
  fi
  ls -l $FILE
 done
