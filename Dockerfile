#使用的基础镜像
FROM tomcat:jdk8-openjdk
COPY ./target/*.war /usr/local/tomcat/webapps