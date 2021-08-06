#!/bin/bash

set -e

cd /home/$USERNAME

# If no command is provided, set bash to start interactive shell
if [ -z "$1" ]; then
    set - "/bin/bash" -l
fi

export HOME="/home/$USERNAME/"
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc
chroot --userspec=$USERNAME:$USERNAME --skip-chdir / "$@"

