#!/bin/bash

# Define the location as a variable
LOCATION="Redhill,%20Singapore"

# Create the cache directory if it doesn't exist
mkdir -p ~/.cache

# Infinite loop to execute every 30 minutes
while true; do
  # Query the weather information
  response=$(curl -s -w "%{http_code}" "https://wttr.in/${LOCATION}?format=3")
  http_status="${response: -3}"  # Extract the last 3 characters as the HTTP status code
  weather_data="${response%???}" # Extract everything except the last 3 characters as the weather data

  # Get the current timestamp
  timestamp=$(date +'%I:%M:%S %p %A, %-d %B %Y')
  # Check if the HTTP status is 200
  if [ "$http_status" -eq 200 ]; then
    echo -e "${weather_data}\nLast queried at: ${timestamp}" >~/.cache/.wttr
  else
    echo -e "Weather condition unavailable for $LOCATION\nLast queried at: ${timestamp}" >~/.cache/.wttr
  fi

  # Wait for 30 minutes before repeating
  sleep 1800
done
