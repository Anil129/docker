#!/bin/bash
if [ ! -f ~/.tomcat_admin_created ]; then
     sh  tomcat_admin_user.sh
fi
exec ${CATALINA_HOME}/bin/startup.sh

