#!bin/bash

#Modify the previous script so that it accepts the file or directory name as an argument instead of
#promting the user to enter it

FILE=$1

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
