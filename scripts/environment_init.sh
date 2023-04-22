cd /workspace/catkin_ws
catkin init
rosdep update
rosdep install -y --from-paths ./src --ignore-src
catkin_make --cmake-args -DCMAKE_BUILD_TYPE=Release
echo "
source /workspace/catkin_ws/devel/setup.bash
" >> "/home/${DOCKER_USER}/.bashrc"
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc

echo "export ROS_MASTER_URI=http://127.0.0.1:11311" >> "/home/${DOCKER_USER}/.bashrc"
echo "export ROS_HOSTNAME=127.0.0.1" >> ~/.bashrc

source ~/.bashrc
