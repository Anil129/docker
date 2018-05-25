#!/bin/bash
if [ -f ~/.tomcat_admin_created ]; then
       echo "Tomcat 'admin' user already created"
       exit 0
fi

echo "--> Creating tomcat admin password to configure it."
pass=`openssl rand -base64 15`
echo '<tomacat-user>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-gui"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-script"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-jmx"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="admin-gui"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="admin-script"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml

echo '<user username="admin"  password=<'${pass}'>  roles="manager-gui,manager-script,manager-jmx,admin-gui,admin-script"'

echo "=============================================================================================="


echo "You can now configure this server using 'admin':${pass}"

touch ~/.tomcat_admin_created
echo "=============================================================================================="

echo "<----------------------------------------------- Done ----------------------------------------------------->"

~                                                                                                                                                   
~                                                                                                                                                   
~       
