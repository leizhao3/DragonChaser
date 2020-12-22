#!/bin/sh
# Authorize the serial portal for the lidar, IMU, and Arduino Uno (steering & ESC)

# Make the jetsonbot catkin workspace
cd ~/catkin_ws
sudo chmod 666 /dev/ttyUSB* #serial portal for lidar & IMU
sudo chmod 666 /dev/ttyACM0 #serial portal for Arduino Uno (steering & ESC)
ls -l /dev |grep ttyUSB*
ls -l /dev |grep ttyACM0

