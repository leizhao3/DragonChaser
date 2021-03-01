# Project Overview
This project is to design and build the self-driving RC car that has following functionality with the BOM cost less than $500:
* Indoor Mapping Generation
* Indoor Navigation
* Obstcle Avoidance


<a href="https://www.youtube.com/watch?v=OgjjOxeQk5s" target="_blank"><img src=./pics/0-ThumbNail.jpg width="550" height="281" /></a>

# Getting Start
## Hardware
### BOM
[Full BOM List (click me)](https://docs.google.com/spreadsheets/d/1b1mu4ADhXUIyJH5d5sj8KGjCyuaeIu7xUm772Ck9I2I/edit?usp=sharing)

<img src=./pics/ComponentIntro_UpperChassis.jpeg width="225" height="127" />
<img src=./pics/ComponentIntro_LowerChassis.jpeg width="225" height="127" />

### Odroid Setup, Ubuntu Mate 18.04
<img src="https://wiki.odroid.com/_media/odroid-xu4/hardware/xu4_detail.jpg?w=980&tok=460969" width="225" height="127" />

Odroid Setup Tutorial: [Headless Setup with Ubuntu Mate](https://wiki.odroid.com/odroid-xu4/application_note/software/headless_setup)

After your setup, following comment would allow you remotely access to your Odroid:
```
ssh odroid@IP_ADDRESS #the IP address of your Odroid
```

If you have VNC viwer setup, after the code above, you could use following code to start your remote server in Odroid:
```
x11vnc
```
Then, you could launch the VNC viewer to access the desktop of Odroid, shown as following. For most of the case, the portal is ```IP_ADDRESS:5900```:

<img src=./pics/VNCViewer.png width="225" height="127" />

### IMU Setup & Calibration
### RPLidar Setup

---
## Software
### ROS Environment Setup
ROS Tutorial: [Installing and Configuring Your ROS Environment](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)

The ROS demostrated: ROS Melodic

### ROS Multi Machine Setup
ROS Tutorial: [Running ROS across multiple machines](http://wiki.ros.org/ROS/Tutorials/MultipleMachines)

### ROS Dependancy Setup


### Indoor Mapping Generation


### Indoor Navigation





