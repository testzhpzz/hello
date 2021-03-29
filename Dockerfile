#使用的基础镜像
FROM centos
#创建目录
RUN mkdir -p /docker_home/local && cd /home/temp
#把当前目录下的jdk文件夹添加到镜像
ADD ./apache-tomcat-9.0.44.tar.gz /docker_home/local/apache-tomcat-9.0.44
ADD ./jdk-8u281-linux-x64.tar.gz /docker_home/local/jdk1.8.0_281
COPY ./target/*.war /docker_home/local/apache-tomcat-9.0.44/webapps
ENV JAVA_HOME /docker_home/local/jdk1.8.0_281/
ENV CATALINA_HOME /docker_home/local/tomcat9
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin
#暴露8080端口
EXPOSE 8080
#启动时运行tomcat
CMD ["/docker_home/local/tomcat9/bin/catalina.sh","run"]