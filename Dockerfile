FROM tomcat:10.1.15-jdk21
LABEL author=ethans
RUN apt-get update -y
<<<<<<< HEAD
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/
=======
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/
>>>>>>> 5c1c74ae44980dd27b00dcc1b4ea44635c9ef043
