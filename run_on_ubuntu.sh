IMAGE=fukurin/ros:melodic-ubuntu
USER_ID="$(id -u)"

echo "Launching $IMAGE"
docker run \
    -it --rm \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
    --env="XAUTHORITY=$HOME/.Xauthority" \
    --env="DISPLAY=${DISPLAY}" \
    --env="USER_ID=$USER_ID" \
    --net=host \
    --privileged \
    $IMAGE