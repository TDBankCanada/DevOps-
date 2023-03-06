#!/bin/bash

# Set the threshold for memory usage

threshold=75

#Get the memory in percentage form

memory_usage=$(free | awk '/Mem/{printf("%.0f"), $3/$2*100}')

# Check if the memory usage exceeds the threshold
if ((memory_usage >= threshold)); then
    # Send a notification using the notify-send command
    notify-send "Memory Usage Alert" "Memory usage is at ${memory_usage}%"
fi


