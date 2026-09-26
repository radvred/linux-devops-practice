#!/bin/bash
curl -I http://localhost
status=$?
if [ $status -eq 0 ]; then
    echo "Nginx OK"
else 
    echo "Nginx FAIL"
fi
curl -I http://second-container:8080
status=$?
if [ $status -eq 0 ]; then
    echo "second-container OK"
else
    echo "second-container FAIL"
fi
curl -I http://third_container:8080
status=$?
if [ $status -eq 0 ]; then
    echo "third_container OK"
else
    echo "third_container FAIL"
fi
