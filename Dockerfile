# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER suresh 
COPY ./webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
RUN echo "succeded"
USER root
