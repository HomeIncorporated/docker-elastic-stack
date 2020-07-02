#!/bin/bash

if [[ $RUNNING_MODE == "metricbeat" ]]; 
then 
    /metricbeat-entrypoint.sh
else 
    echo "Not starting the metricbeat service as command is not any of (metricbeat)"; 
fi