# Project Overview
This project is to design and build the self-driving RC car that has following functionality with the BOM cost less than $500:
* Indoor Mapping Generation
* Indoor Navigation
* Obstcle Avoidance


<a href="https://www.youtube.com/watch?v=OgjjOxeQk5s" target="_blank"><img src=./pics/0-ThumbNail.jpg></a>

---
# Getting Start - Hardware
## BOM
[Full BOM List (click me)](https://docs.google.com/spreadsheets/d/1b1mu4ADhXUIyJH5d5sj8KGjCyuaeIu7xUm772Ck9I2I/edit?usp=sharing)

<img src=./pics/ComponentIntro_UpperChassis.jpeg>
<img src=./pics/ComponentIntro_LowerChassis.jpeg>

## Quick Start


## Odroid Setup, Ubuntu Mate 18.04
<img src="https://wiki.odroid.com/_media/odroid-xu4/hardware/xu4_detail.jpg?w=980&tok=460969">

Odroid Setup Tutorial: [Headless Setup with Ubuntu Mate](https://wiki.odroid.com/odroid-xu4/application_note/software/headless_setup)

After your setup, following code would allow you remotely access to your Odroid:
```
ssh odroid@IP_ADDRESS #the IP address of your Odroid
```

If you have VNC viwer setup, after the code above, you could use following code to start your remote server in Odroid:
```
x11vnc
```
Then, you could launch the VNC viewer to access the desktop of Odroid, shown as following. For most of the case, the portal is ```IP_ADDRESS:5900```:

<img src=./pics/VNCViewer.png>

## IMU Calibration & Setup
## RPLidar Setup
## Power Cable

---
# Getting Start - Software
## Quick Start
Step 0 (ONLY need to be done once): set up the ROS environment
* ROS Installation & Environment Setup (Tutorial following)
* ROS Multi Machine Setup (Tutorial following)
* ROS Dependancy Setup (Tutorial following)
* Steering Angle Tuning (Tutorial following)

Follow the code below to install the DragonChaser:
```
git clone https://github.com/leizhao3/DragonChaser

```

Step 1: Indoor Mapping Generation
```

```
TF Tree Check

RQT Graph Check

Step 2: Indoor Navigation with lidar ONLY odom
```

```
TF Tree Check

RQT Graph Check


Step 3: Indoor Navigation with lidar + particle filter odom
```

```
TF Tree Check

RQT Graph Check

## ROS Dependancy Setup
Packages that available via ```apt-get``` could be installed by following code:
```
sudo apt-get install remmina synaptic gimp ros-melodic-navigation ros-melodic-hector-slam ros-melodic-hector-mapping arduino ros-melodic-geographic-msgs ros-melodic-rosserial-arduino ros-melodic-rosserial ros-melodic-slam-gmapping ros-melodic-mrpt-slam ros-melodic-mrpt-icp-slam-2d ros-melodic-robot-localization -y 
```

Additional packages need to be installed via source:
```
git clone https://github.com/ros-planning/navigation_tutorials.git 
git clone https://github.com/robopeak/rplidar_ros.git
git clone https://github.com/tianb03/rf2o_laser_odometry
git clone https://github.com/Hypha-ROS/hypha-racecar 
```

Use ```rosdep``` would be helpful to get all packages installed correctly. Code below & more infomration could be find out here, [rosdep](http://wiki.ros.org/rosdep):
```
rosdep install --from-paths src --ignore-src -r -y
```

## ROS Installation & Environment Setup
ROS Tutorial: [Installing and Configuring Your ROS Environment](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)

The ROS demostrated: ROS Melodic

## ROS Multi Machine Setup
ROS Tutorial: [Running ROS across multiple machines](http://wiki.ros.org/ROS/Tutorials/MultipleMachines)

Example Setup as Following:

**Host Machine (e.g. Odroid) - The Master**

Step 1: set up the host name to it's master_ip address, in this case this is 192.168.0.110
```
export ROS_HOSTNAME=192.168.0.110
```

Step 2: set up the ROS_MASTER_URI to http:// master_ip:11311
```
export ROS_MASTER_URI=http://192.168.0.110:11311
```

Step 3: run ROS 
```
roscore
```
After all these code, you should see the windows as below, and the ROS_MASTER_URI should shown in both in the console and the windows title. 
<img src=./pics/ROS_Multi_Machine_Setup.png>

**Host Machine (e.g. Odroid) - The Listener**

Step 1: set up the ROS_MASTER_URI to http:// master_ip:11311
```
export ROS_MASTER_URI=http://192.168.0.110:11311
```
Step 2: set up the ROS_IP
```
export ROS_IP=192.168.0.110
```
Step 3: test: try to run some communication code
```
rosrun turtlesim turtle_teleop_key
```
<img src=./pics/ROS_Multi_Machine_Setup_2.png>


**Guest Machine (e.g. Virtual Box) - The Talker**
Step 1: same step as Step 1 of "The Listener"

Step 2: same step as Step 2 of "The Listener"

Step 3: test: try to run some communication code. 
```
rosrun turtlesim turtlesim_node
```

After you can see console similar as the following, you could input in Talker (e.g. keyboard) & control the Listener.
<img src=./pics/ROS_Multi_Machine_Setup_3.png>

## Steering Angle Tuning

---
# Known Bugs
## Virtual Machine Two-Way Communication
***Description***

Not able to set up two-way communication between the Virtual Machine (The Talker) to Host (The Listener). For example, Rviz CANNOT send POINT to the host.

***Root Cause***

The default Network adapter would ONLY create a subnet --> don't specify the unique IP address to the VM --> cannot been ping from other machine in the network. 

***Solution(Mac ONLY)***

Step 1: Change the Network Adapter type to "Bridge Adapter"
<img src=./pics/Known_Bug_VirtualMachine.png>






