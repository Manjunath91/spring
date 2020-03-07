FROM centos:latest
MAINTAINER manju

RUN yum update -y &&\
    yum install java-1.8.0-openjdk-1.8.* -y
RUN mkdir -p /opt

COPY target/* /opt/

CMD java -jar /opt/spring-boot-actuator-0.0.1-SNAPSHOT.jar 

EXPOSE 9090

