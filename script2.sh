#!bin/bash

docker ps -a | grep catalina.sh | awk '{print$1}' >> new

input="new"

while IFS= read -r line
do 
#  echo "$line"
  docker container stop $line && docker rm $line
#  ((LINE_NUM++))
done < "$input"
