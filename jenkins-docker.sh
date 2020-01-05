#!bin/bash
# move to the present project working directory in jenkins 
cd /var/lib/jenkins/workspace/<<project-name>>/
# build the project using maven
mvn clean install
# copy docker file into docker location
sudo cp Dockerfile /home/ubuntu/
# copt .war file into docker location
sudo cp webapp/target/webapp.war /home/ubuntu/
# move to the docker location
cd /home/ubuntu/
# build the docker file
docker build -t helloworld .
# run docker container
docker run --name t1 -p 8181:8080 -itd helloworld
