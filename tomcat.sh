#!/bin/bash
yum install httpd
wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
wget -qO- https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.md5 | md5sum -c -
tar xzf apache-tomcat-*
rm apache-tomcat-*.tar.gz
mv apache-tomcat* tomcat
