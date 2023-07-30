FROM ubuntu:jammy
RUN apt update
RUN apt install openjdk-11-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.8/bin/apache-tomcat-10.1.8.tar.gz .
RUN tar -xvzf apache-tomcat-10.1.8.tar.gz
COPY /var/lib/jenkins/.m2/repository/com/cangksolutions/cangk/1.1-RELEASE/cangk-1.1-RELEASE.war apache-tomcat-10.1.8/webapps 
EXPOSE 8080
CMD ["apache-tomcat-10.1.8/bin/catalina.sh", "run"]
