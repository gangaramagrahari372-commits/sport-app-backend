FROM tomcat:9.0-jdk17-corretto

# Default Tomcat apps hata rahe hain
RUN rm -rf /usr/local/tomcat/webapps/*

# Apne project ki WAR file ko Tomcat ke ROOT.war me copy kar rahe hain
COPY SportApp /usr/local/tomcat/webapps/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]