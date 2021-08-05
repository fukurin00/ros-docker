docker build\
     --rm \
     --network=host \
     --tag fukurin/ros:melodic-ubuntu \
     --build-arg ROS_DISTRO=melodic \
     --build-arg USER_NAME=autoware \
     --file Dockerfile.base .