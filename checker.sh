#!/bin/bash

curl -I http://localhost:$1
status=$?
if [ $status -eq 0 ]; then
echo "OK"
else 
echo "ERROR"
fi
echo "Version from main"
echo "Version from test-branch"
