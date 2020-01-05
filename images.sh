#!bin/bash

docker images | awk '{print$3}' | sed '1d' >> dockerimages

input="dockerimages"

while IFS= read -r line
do 
#  echo "$line"
  docker image rm -f $line
#  ((LINE_NUM++))
done < "$input"

rm -f $input
