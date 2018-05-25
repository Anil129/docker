FROM centos:latest
RUN yum install wget openssl -y
COPY jdk.sh /jdk.sh
RUN sh jdk.sh
ENV JAVA_HOME /jdk
RUN echo 'export PATH=$PATH:${JAVA_HOME}/bin' >> ~/.bashrc
COPY tomcat.sh /tomcat.sh
RUN sh tom.sh
ENV CATALINA_HOME /tomcat
RUN echo 'export PATH=$PATH:${CATALINA_HOME}/bin' >> ~/.bashrc
COPY tomcat_admin_user.sh /tomcat_admin_user.sh
COPY script.sh /script.sh
EXPOSE 8080
CMD ["/script.sh"]
