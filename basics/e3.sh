#!bin/bash

#Store the output of the command "hostname" in a variable. Display "This script is running on
#_______." where "_______" is the output of the "hostname" command.

VAR=$(hostname)

echo "This script is running on $VAR"

