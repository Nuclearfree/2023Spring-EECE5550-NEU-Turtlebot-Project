# NEU EECE5550 Group 9 Turtlebot3 Disaster Response Project
## Environment Setup
This project was based on ubuntu 20.04(Focal Fossa) and ros noetic version.
For quickly developing, we use [docker](https://en.wikipedia.org/wiki/Docker_(software)) to manager our environment.

So, first of all, you need to download docker in your computer. Here is the official document which will show you how to install docker on your computer. [Link](https://docs.docker.com/engine/install/ubuntu/)

### Outside the container
Run the script `docker/build.sh` to build docker image:

```bash
bash docker/build.sh
```

It will build the docker image called `turtlebot:3.0`. As the docker image was built successfully, you can use it in the future without building again.


You can use the script to create a new container which include all dependence we need for this project.
Execute the following command to start the container:

```bash
bash scripts/start_docker.sh 
```

After all, you can attach the container with any one terminal by:

```bash
bash scripts/into_docker.sh 
```
### Inside the container
For the first time you creating a new container and attaching it, please run the following command to initialize the environment:

```bash
bash scripts/environment_init.sh 
if cmake filed,
cd catkin_ws, rosdep update, rosdep install -y --from-paths ./src --ignore-src, sudo apt update, sudo -H apt-get install -y ros-noetic-move-base-msgs, rosdep install -y --from-paths ./src --ignore-src, catkin_make, source devel/setup.bash,
cd ..
```
You need to replace with your personal computer ip in `~/.bashrc`:
```bash
# replace 127.0.0.1 with your ip
export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_HOSTNAME=127.0.0.1
source ~/.bashrc
```

## How to run
### On your robot
Open camera:
```bash
roslaunch raspicam_node camerav2_1280x960_10fps.launch enable_raw:=true camera_frame_id:=camera_link
```
Bringup turtlebot
```bash
roslaunch turtlebot3_bringup turtlebot3_robot.launch
```

### On your computer
Then, you can start the whole system by:
```bash
roscore
bash scripts/run.sh 
```
After all setup is finished, you can start explore by:
```bash
roslaunch explore_lite explore.launch
```

After exploration, you can save the map by:
```bash
rosrun map_server map_saver -f ~/map
```
When you kill the progress of detection, it will save the tag exploration result in `~/.ros/convert.txt`.
## Key idea
Disaster response task contain two main jobs:
1. Generate a complete map of the environment.
2. Locate any apriltag in the environment

### Generate a complete map of the environment
To complete this task, we need to use lidar data, called point cloud to create an occupy map.
We need to implement several functions:
1. SLAM. We need slam to create the map. It will generate an occupy map.
2. Explorer. We need an explorer to make the robot automatically explore the unknown environment. It will generate a point on the occupy map.
3. Navigation. We need a planner, which will guide the robot how to get the target place. It will generate the control information.
4. Move controller. We need a controller to control the chassis to move as we set.

Therefore, we use the following ros packages to achieve our goal:
1. `turtlebot3_slam`.

[`turtlebot3_slam`](http://wiki.ros.org/turtlebot3_slam) package provides roslaunch scripts for starting the SLAM. We can use it to start several SLAM method. For example, we can choose `gmapping` as our SLAM method. [`gmapping`](http://wiki.ros.org/gmapping) package provide laser-base SLAM, and it does a good job in indoor-slam task. It will subscribe `tf` and `scan` topics to get the transforms to relate frames and laser data. And it will publish the `OccupancyGrid` in the topic `map`.

2. `explore_lite`.

[`explore_lite`](http://wiki.ros.org/explore_lite) package provides greedy frontier-based exploration. It subscribes topic `map` and `map_updates` to get the `OccupancyGrid`. And it will use the service provide by `move_base` to publish the target point.

3. `turtlebot3_navigation`.

[`turtlebot3_navigation`](http://wiki.ros.org/turtlebot3_navigation) provides roslaunch scripts for starting the navigation. We can use this package to start `move_base` with `dwa_local_planner`. It provides service to get a target point in the occupy map and plan a route to get here. After getting a target, `move_base` will publish velocity commands on `cmd_vel` topic.

All package mentioned above can be linked together to finish the job for exploring an unknown environment and generating an environment occupy map. Finally, in order to control the chassis, we need to bringup turtlebot3. After bringup, turtlebot3 will subscribe the `cmd_vel` topic and actually execute it.

Therefore, we can start all the packages we need by:
1. run `roslaunch turtlebot3_bringup turtlebot3_robot.launch` on turtlebot3 to bringup the robot.
2. run `roslaunch turtlebot3_navigation move_base.launch` to start navigation.
3. run `roslaunch turtlebot3_slam turtlebot3_slam.launch` to start SLAM.
4. run `roslaunch explore_lite explore.launch` to start exploring.

The connection between each package can be seen in `rqt_graph`. You can run the following command to check the node and topic connection:
```bash
rosrun rqt_graph rqt_graph
```

### Locate any apriltag in the environment
To locate all apriltags, we need to do:
1. Identify all tags in the environment.
2. Explore all tags in the environment.

Firstly, we need to start the camera on turtlebot3 by:
```bash
roslaunch raspicam_node camerav2_1280x960_10fps.launch enable_raw:=true camera_frame_id:=camera_link
```
Then, we can use [`apriltag_ros`](http://wiki.ros.org/apriltag_ros) package to identify the tags in the image. `apriltag_ros` package subscribes `camera/image_rect` topic which contain the raw image, and `camera/camera_info` topic which contain the camera calibration matrix. We can remap them to the topics publish by turtlebot3. It will publish the tag position related to camera frame on topic `tf`.

#### Question in apriltag ros
As `apriltag_ros` package, the messages from  `camera/image_rect` and `camera/camera_info` need to pair by time. If timestamps are not synchronise, `apriltag_ros` package will not identify them. 
So we need do the synchronisation ourselves. We can create a node subscribes them and publish new messages with synchronised time. You can see `src/aprilta_detection/scripts/simple_sync.py` for more details.


Original `explore_lite` package can explore unknown environment. However, the exploring based on occupy map which was created by SLAM with laser data. So we need to change exploring strategy so that we can find all tags in the environment.

The idea is simple. We can just take a rotation whenever we get a new place. Just simulating laser rotating to get point cloud from the environment, we can rotate the robot to make the camera capture the surroundings. You can get more details in `src/explore/src/explore.cpp`, and we will make a brief description in here.

To rotate, the simplest way is sending a velocity to turtlebot3. Also, we need to publish the velocity in a constant frequency so that it can be executed in these time.
```c++
geometry_msgs::Twist rotation_msg;
rotation_msg.angular.z = rotation_speed_;
ROS_INFO("start rotation--------------");
ros::Rate rotation_rate(10);
ros::Time start_time = ros::Time::now();
while(ros::ok() && ros::Time::now() - start_time <= rotation_time_)
{
    rotation_publisher_.publish(rotation_msg);
    rotation_rate.sleep();
}
```
The parameter `rotation_speed_` is used to control rotation speed in radians. And `rotation_time_` is used to control rotation time in second. So the total movement for turtlebot3 can be computed by:
```
rotation_angle = rotation_speed * rotation_time
```
We also need to set tag information in advance. Firstly, you need to point out the tag family in `src/apriltag_detection/config/setting.yaml`. Then, you need to config all tag id, tag size and tag frame name showing in `tf` at file `src/apriltag_detection/config/tags.yaml`. 

After above setting, you can start the detection by:
```bash
roslaunch apriltag_detection detection.launch
```
The launch file will start several nodes:
1. `apriltag_ros_continuous_node` is the node provided by `apriltag_ros` package to detect the tag from the input image and publish related `tf`.
2. `simple_sync.py` is the node that synchronise images and camera information.
3. `apriltag_detection.py` is the node that will save the tag position when a new message published by `apriltag_ros_continuous_node`. And it will save position information to file at `~/.ros/convert.txt`.
4. `static_transform_publisher` is the node that publish the transform from camera frame to robot base frame.
