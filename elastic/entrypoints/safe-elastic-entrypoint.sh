#!/bin/bash

if [[ $RUNNING_MODE == "elasticsearch" || $RUNNING_MODE == "master" || $RUNNING_MODE == "ingest" || $RUNNING_MODE == "data" || $RUNNING_MODE == "all" ]]; 
then 
    if [[ $RUNNING_MODE == "all" ]];
    then
        /elastic-entrypoint.sh elasticsearch;
    else
        /elastic-entrypoint.sh $RUNNING_MODE;
    fi
else 
    echo "Not starting the elasticsearch service as command is not any of (elasticsearch, master, data, ingest or all)"; 
fi