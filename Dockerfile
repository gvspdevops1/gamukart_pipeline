FROM ubuntu:jammy
RUN apt update
RUN apt install openjdk-11-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz .
RUN tar -xvzf apache-tomcat-10.0.27.tar.gz
COPY gamukart_pipeline/target/*.war apache-tomcat-10.0.27/webapps
EXPOSE 8080
CMD ["apache-tomcat-10.0.27/bin/catalina.sh", "run"]
