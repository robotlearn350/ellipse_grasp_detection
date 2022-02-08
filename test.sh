#!/bin/sh
echo "start"
roslaunch openni2_launch openni2.launch camera:=camera depth_registration:=true load_driver:=true publish_tf:=true&
sleep 5
roslaunch robotiq_85_bringup robotiq_85.launch&
sleep 5
rosrun mypkg trans_location&
sleep 5
rosrun pickplace camera_demo1.py

