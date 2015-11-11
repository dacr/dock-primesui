
CATALINA_OPTS=$CATALINA_OPTS" -server"
CATALINA_OPTS=$CATALINA_OPTS" -Xms1200m -Xmx1200m"
CATALINA_OPTS=$CATALINA_OPTS" -XX:NewRatio=8"
CATALINA_OPTS=$CATALINA_OPTS" -XX:MaxPermSize=150M -XX:PermSize=100M"

CATALINA_OPTS=$CATALINA_OPTS" -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+ScavengeBeforeFullGC -XX:+CMSScavengeBeforeRemark"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+ExplicitGCInvokesConcurrent"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+CMSClassUnloadingEnabled"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+UseCMSInitiatingOccupancyOnly"
CATALINA_OPTS=$CATALINA_OPTS" -XX:CMSInitiatingOccupancyFraction=80"

CATALINA_OPTS=$CATALINA_OPTS" -Djava.net.preferIPv4Stack=true"
CATALINA_OPTS=$CATALINA_OPTS" -Dsun.net.inetaddr.ttl=30"

CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote"
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote.port=3500"
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote.ssl=false"
CATALINA_OPTS=$CATALINA_OPTS" -Dcom.sun.management.jmxremote.authenticate=false"

CATALINA_OPTS=$CATALINA_OPTS" -verbose:gc"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+PrintGCDetails"
CATALINA_OPTS=$CATALINA_OPTS" -XX:+PrintGCDateStamps"
CATALINA_OPTS=$CATALINA_OPTS" -Xloggc:$CATALINA_BASE/logs/GC_`date '+%y%m%d_%H%M%S'`.log"

