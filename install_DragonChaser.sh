#!/bin/sh
# Install the dragon chaser & all it's depedencies

cd ~/DragonChaser
# Install all dependecies
sudo apt-get install remmina synaptic gimp ros-melodic-navigation ros-melodic-hector-slam -y 
sudo apt-get install ros-melodic-hector-mapping arduino ros-melodic-geographic-msgs -y 
sudo apt-get install ros-melodic-rosserial-arduino ros-melodic-rosserial -y 
sudo apt-get install ros-melodic-slam-gmapping ros-melodic-mrpt-slam ros-melodic-mrpt-icp-slam-2d -y 
sudo apt-get install ros-melodic-robot-localization -y 

cd ~/DragonChaser/src
#Remove any folder in this /src
rm -rf hypha-racecar
rm -rf mpu6050_serial_to_imu
rm -rf navigation_tutorials
rm -rf rf2o_laser_odometry
rm -rf rplidar_ros
#Clone relative folder
git clone https://github.com/ros-planning/navigation_tutorials.git 
git clone https://github.com/robopeak/rplidar_ros.git
git clone https://github.com/tianb03/rf2o_laser_odometry
git clone https://github.com/Hypha-ROS/hypha-racecar 
git clone https://github.com/fsteinhardt/mpu6050_serial_to_imu

cd..
catkin_make #build all the packages