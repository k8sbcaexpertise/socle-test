FROM jboss/wildfly

ADD target/socle-test.war /opt/jboss/wildfly/standalone/deployments/
