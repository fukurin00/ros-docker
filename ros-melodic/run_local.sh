xhost +local:root
docker run \
    -it --rm \
    --privileged \
    --gpus all \
    --ipc=host \
    --volume=/dev/input:/dev/input \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
    --env="XAUTHORITY=$HOME/.Xauthority" \
    --env="DISPLAY=${DISPLAY}" \
    --volume=$HOME/ros_docker_ws:$HOME:rw \
    --name="ros-melodic-work" \
    --network=host \
    fukurin/ros:melodic-base