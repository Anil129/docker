#!/bin/bash
if [ -f /.tomcat_admin_created ]; then
	echo "Tomcat 'admin' user already cteated"
        exit 0
fi

echo "--> Configuring user for server."
pass=`openssl rand -base64 10` > /.tomcat_admin_password
echo "<!--"
echo "-->" >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<tomcat-user>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="manager-gui"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="admin-gui"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="admin-script"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<user username="admin"  password=<'${pass}'>  roles="manager-gui,admin-gui,admin-script"'
echo '<\/tomcat-user>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
touch /.tomcat_admin_created
echo "=============================================================================================="


echo "You can now configure this server using 'admin':${pass}"


echo "=============================================================================================="

~                                                                                                                                                   
~                                                                                                 
~       
