FROM ubuntu:jammy
RUN apt update
RUN apt install openjdk-11-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.7/bin/apache-tomcat-10.1.7.tar.gz .
RUN tar -xvzf apache-tomcat-10.1.7.tar.gz
EXPOSE 8080
CMD ["apache-tomcat-10.1.7/bin/catalina.sh", "run"]
