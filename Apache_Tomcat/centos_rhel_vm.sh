#!/bin/bash

yum install wget unzip java -y 
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.zip    	
unzip apache-tomcat-9.0.74.zip
rm apache-tomcat-9.0.74/conf/tomcat-users.xml
rm apache-tomcat-9.0.74/webapps/manager/META-INF/context.xml
cp tomcat-users.xml apache-tomcat-9.0.74/conf/
cp context.xml apache-tomcat-9.0.74/webapps/manager/META-INF/
chmod 777 apache-tomcat-9.0.74/bin/startup.sh apache-tomcat-9.0.74/bin/shutdown.sh apache-tomcat-9.0.74/bin/catalina.sh
./apache-tomcat-9.0.74/bin/startup.sh
echo "cd /root/Devops_Tools_Setup/Apache_Tomcat/apache-tomcat-9.0.74/bin && ./startup.sh" >> /root/.bashrc
