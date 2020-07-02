#!/bin/bash

if [[ $RUNNING_MODE == "filebeat" ]]; 
then 
    /filebeat-entrypoint.sh
else 
    echo "Not starting the filebeat service as command is not any of (filebeat)"; 
fi