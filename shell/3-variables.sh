#!/bin/bash

START_TIME=$(date +%Y-%m-%d_%H:%M:%S) 

echo "Script executed at: $START_TIME"

sleep 10

END_TIME=$(date +%Y-%m-%d_%H:%M:%S)

echo "Script executed in: $END_TIME seconds"

# Calculate duration
TOTAL_TIME=$($END_TIME - $START_TIME)

echo "Script executed in: $TOTAL_TIME"
