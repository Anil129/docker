FROM centos:latest
ARG http_port=8080
RUN yum install wget openssl -y
COPY jdk.sh /jdk.sh 
COPY tomcat.sh /tomcat.sh 
COPY jdk.sh /jdk.sh
COPY tomcat_admin_user.sh /tomcat_admin_user.sh 
COPY script.sh /script.sh
RUN sh jdk.sh 
RUN sh tomcat.sh 
ENV JAVA_HOME /jdk
ENV CATALINA_HOME /tomcat
RUN echo 'export PATH=$PATH:${JAVA_HOME}/bin' >> ~/.bashrc && \
    echo 'export PATH=$PATH:${CATALINA_HOME}/bin' >> ~/.bashrc
EXPOSE ${http_port}
ENTRYPOINT ["/script.sh"]

