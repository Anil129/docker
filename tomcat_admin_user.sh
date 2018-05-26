#!/bin/bash
if [ -f /.tomcat_admin_created ]; then
	echo "Tomcat 'admin' user already cteated"
        exit 0
fi

man1=manager-gui
# man2=manager-script
# man3=manager-jmx
adm1=admin-gui
# adm2=admin-script

pass=`openssl rand -base64 10 | cut -b -10`
sed -i 's/<\/tomcat-users>//' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="'$man1'"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
# echo '<role rolename="'$man2'"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
# echo '<role rolename="'$man3'"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<role rolename="'$adm1'"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
# echo '<role rolename="'$adm2'"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '<user username="admin"  password="'${pass}'" roles="'$man1','$adm1'"/>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
echo '</tomcat-users>' >> ${CATALINA_HOME}/conf/tomcat-users.xml
touch /.tomcat_admin_created                                                                                                                                        
~                                                                                                 
~       
