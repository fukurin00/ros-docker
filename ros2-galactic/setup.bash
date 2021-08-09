#!/bin/bash

export HOME="/home/developer"
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc

usermod -u $USER_ID -o -m developer
groupmod -g $GROUP_ID developer