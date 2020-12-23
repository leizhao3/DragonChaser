#if (ARDUINO >= 100)
 #include <Arduino.h>
#else
 #include <WProgram.h>
#endif

#include <Servo.h> 
#include <SoftwareSerial.h>

#include <ros.h>
#include <std_msgs/UInt16.h>
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Float32MultiArray.h"
#include "geometry_msgs/Twist.h"

ros::NodeHandle  nh;
Servo servo;
Servo motor; 


void steering( const geometry_msgs::Twist& cmd_msg){
  
  int gas = int(cmd_msg.linear.x);
  int angle = int(cmd_msg.angular.z);
  
  motor.writeMicroseconds(gas); // constant speed (1480: 2m/s, 1450: 0.5m/s, 1500: stop)
  servo.write(angle); //set servo angle, should be from 0-180

  digitalWrite(13, HIGH-digitalRead(13));  //toggle led  
}


ros::Subscriber<geometry_msgs::Twist> sub("/car/cmd_vel", steering);

void setup(){
  Serial.begin(57600);
  nh.getHardware()->setBaud(57600);
  pinMode(13, OUTPUT);

  nh.initNode();
  nh.subscribe(sub);

  motor.attach(10);
  servo.attach(9); //attach it to pin 9//UP DOWN
  //modify to the correct hardware of the curren setup
  //motor.attach(9);
  //servo.attach(3); //attach it to pin 3//UP DOWN
  delay(1000);
}

void loop(){
  nh.spinOnce();
  //delay(0.1);
  delay(1);
}
