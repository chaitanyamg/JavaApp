FROM tomcat:8.5.37-jre8
MAINTAINER maha@gmail.com
RUN apt-get update
ADD /root/.m2/repository/DemoPipelineJava/DemoPipelineJava/0.0.1-SNAPSHOT/DemoPipelineJava-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
