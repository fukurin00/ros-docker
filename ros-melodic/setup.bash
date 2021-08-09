#!/bin/bash

# DEFAULT_USER_ID=1000
# if [ -v USER_ID ] && [ "$USER_ID" != "$DEFAULT_USER_ID" ]; then
#     sudo usermod --uid $USER_ID $USERNAME
# fi
export HOME="/home/$USERNAME"
source /opt/ros/$ROS_DISTRO/setup.bash