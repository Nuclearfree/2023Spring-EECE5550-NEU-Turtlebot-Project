FROM osrf/ros:noetic-desktop-full

RUN DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    		ca-certificates \
    		lsb-release \
                cmake \
                git \
                build-essential \
                sudo \
                vim \
                apt-utils \
                libboost-all-dev \
                libyaml-cpp-dev \
                libopencv-dev \
                libgtest-dev \
                libeigen3-dev \
                libboost-all-dev \
                python3-pip \
                ros-noetic-apriltag-ros \
                ros-noetic-gmapping \
                ros-noetic-dwa-local-planner \
                && \
    DEBIAN_FRONTEND=noninteractive pip3 install \
    		catkin_tools \
    		trollius \
    		numpy \
    		catkin_tools_fetch \
    		empy \
    		&& \
    rm -rf /var/lib/apt/lists/*
