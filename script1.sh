#!bin/bash
### deleting docker containers

echo "removing existed docker images&containers"

docker ps -a | grep catalina.sh | awk '{print$1}' >> new

input="new"

while IFS= read -r line
do
#  echo "$line"
  docker container stop $line && docker rm $line
#  ((LINE_NUM++))
done < "$input"

rm -f $input

###deleting docker images

echo "deleting docker images"

docker images | awk '{print$3}' | sed '1d' >> dockerimages

images="dockerimages"

while IFS= read -r line
do
#  echo "$line"
  docker image rm -f $line
#  ((LINE_NUM++))
done < "$images"

rm -f $images

### building docker images

echo "building docker image"

if [ -e Dockerfile ]
then
  echo "building docker image" 
  docker build -t docker-tomcat .
  docker run --name t1 -p 8989:8080 -d docker-tomcat
else 
  echo "file not present"
fi

