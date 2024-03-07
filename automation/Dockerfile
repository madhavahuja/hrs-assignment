FROM ubuntu:20.04

ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update -y
RUN apt install software-properties-common -y

####replace dummy.jar with name of the JAR FILE
COPY dummy.jar /home/dummy.jar  

RUN apt-get install openjdk-8-jdk -y
CMD ["java" , "-jar" , "/home/dummy.jar"]
