sudo apt-get update
​sudo apt-get install default-jdk
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
curl -O http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.12.tar.gz
sudo mkdir /opt/tomcat
​sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
​sudo chgrp -R tomcat /opt/tomcat
​sudo chmod -R g+r confsudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo update-java-alternatives -l
cp jre /usr/lib/jvm/java-1.8.0-openjdk-amd64/
