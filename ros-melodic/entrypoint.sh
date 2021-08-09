#!/bin/bash

set -e

DEFAULT_USER_ID=1000

#
# Ensure host and container have the same user ID. This is to allow both sides
# to read and write the shared directories.
#
if [ -v USER_ID ] && [ "$USER_ID" != "$DEFAULT_USER_ID" ]; then
    echo "Changing dev-melodic user ID to match your host's user ID ($USER_ID)."
    # echo "This operation can take a while..."

    usermod --uid $USER_ID $USERNAME

    # Ensure all files in the home directory are owned by the new user ID
    # find /home/$USERNAME -user $DEFAULT_USER_ID -exec chown -h $USER_ID {} \;
fi

cd /home/$USERNAME

# If no command is provided, set bash to start interactive shell
if [ -z "$1" ]; then
    set - "/bin/bash" -l
fi

# Run the provided command using user 'autoware'
export HOME="/home/$USERNAME/"
chroot --userspec=$USERNAME:$USERNAME --skip-chdir / "$@"