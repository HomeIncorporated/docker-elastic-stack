#!/bin/bash

if [[ $RUNNING_MODE == "logstash" || $RUNNING_MODE == "all" ]]; 
then 
    /logstash-entrypoint.sh logstash -f /etc/logstash/conf.d/
else 
    echo "Not starting the logstash service as command is not any of (logstash, all)"; 
fi