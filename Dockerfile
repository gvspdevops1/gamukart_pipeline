FROM ubuntu:latest
RUN mkdir /var/tomcat
RUN apt update
RUN apt install openjdk-11-jdk -y
WORKDIR /var/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.62.tar.gz
RUN mv apache-tomcat-9.0.62/* /var/tomcat
CMD ["/var/tomcat/bin/catalina.sh", "run"]
