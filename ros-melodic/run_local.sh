xhost +local:root
docker run \
    -it --rm \
    --privileged \
    --gpus all \
    --volume=/dev/input:/dev/input \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
    --volume=$HOME/ros_docker_ws:$HOME:rw \
    --env="XAUTHORITY=$HOME/.Xauthority" \
    --env="DISPLAY=${DISPLAY}" \
    --env="USER_ID=$(id -u)" \
    --env="GROUP_ID=$(id -g)" \
    --env="GAZEBO_MODEL_PATH=$HOME/gazebo_worlds/models" \
    --name="melodic" \
    --network=host \
    fukurin/ros:melodic-base

    # -u "$(id -u):$(id -g)" \