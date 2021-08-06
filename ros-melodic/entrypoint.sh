#!/bin/bash

set -e

cd /home/$USERNAME


export HOME="/home/$USERNAME/"
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc
chroot --userspec=$USERNAME:$USERNAME --skip-chdir / "$@"

set - "/bin/bash" -l
