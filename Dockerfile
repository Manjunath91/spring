FROM centos:latest
MAINTAINER manju

RUN yum update -y &&\
    yum install java-1.8.0-openjdk-1.8.* -y

COPY *.jar app.jar

CMD java -jar app.jar 

EXPOSE 9090

