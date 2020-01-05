#!bin/bash

#shell script to check to see if the file "/etc/shadow" exists. If it does exist, display
#"Shadow passwords are enabled." Next, check to see if you can write to the file. If you can,
#display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have
#permissions to edit /etc/shadow."

FILE="/etc/shadow"
if [ -e $FILE ]
then 
  echo "shadow passwords are enabled"
else 
  echo "file doesnt exist"
fi

if [ -w $FILE ]
then
  echo "you have permissions to edit file"
else
  echo "you donot have permissions to edit /etc/shadow"
fi
