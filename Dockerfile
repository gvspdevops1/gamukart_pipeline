FROM ubuntu:jammy
RUN apt update
RUN apt install openjdk-11-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.19/bin/apache-tomcat-10.1.19.tar.gz .
RUN tar -xvzf apache-tomcat-10.1.19.tar.gz
#COPY /var/lib/jenkins/workspace/docker_pipeline/target/cangk-1.1-RELEASE.war apache-tomcat-10.1.19/webapps
EXPOSE 8080
CMD ["apache-tomcat-10.1.19/bin/catalina.sh", "run"]
