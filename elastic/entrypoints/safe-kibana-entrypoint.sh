#!/bin/bash

if [[ $RUNNING_MODE == "kibana" || $RUNNING_MODE == "all" ]]; 
then 
    /kibana-entrypoint.sh kibana
else 
    echo "Not starting the kibana service as command is not any of (kibana, all)"; 
fi