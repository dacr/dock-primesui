FROM tomcat:7-jre7

MAINTAINER David CROSSON <crosson.david@gmail.com>

ENV PURL http://www.janalyse.fr/primesui/primesui.war
###ENV JURL http://labs.consol.de/maven/repository/org/jolokia/jolokia-war/1.2.3/jolokia-war-1.2.3.war

ADD $PURL $CATALINA_HOME/webapps/
###ADD $JURL $CATALINA_HOME/webapps/

ENV PRIMESUI_CACHE   true
ENV PRIMESUI_TESTING false
ENV PRIMESUI_SESSION true

