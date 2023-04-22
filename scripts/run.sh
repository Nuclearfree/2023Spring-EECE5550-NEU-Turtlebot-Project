nohup roslaunch turtlebot3_navigation move_base.launch &> ~/move_base.txt &
nohup rosrun restriction_point restriction_point &> ~/reduce_point.txt &
nohup roslaunch turtlebot3_slam turtlebot3_slam.launch &> ~/slam.txt &
nohup roslaunch apriltag_detection detection.launch &> ~/detection.txt
