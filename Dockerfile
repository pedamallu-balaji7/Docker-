FROM tomcat:9.0
ADD **/*.war /var/lib/jenkins/workspace/Build-Tomcat-Docker-Image
EXPOSE 8080
CMD ["catalina.sh", "run"]