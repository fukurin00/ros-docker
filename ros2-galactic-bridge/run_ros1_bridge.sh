xhost +local:root
docker run \
    -it --rm \
    --gpus all \
    --privileged \
    --ipc=host \
    --volume=/dev/input:/dev/input \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
    --env="XAUTHORITY=$HOME/.Xauthority" \
    --env="DISPLAY=${DISPLAY}" \
    --name="galactic-bridge" \
    --network=host \
    --env="ROS_MASTER_URI=http://localhost:11311" \
    fukurin/ros2:galactic-bridge 