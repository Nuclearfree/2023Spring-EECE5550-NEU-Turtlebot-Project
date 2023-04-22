#!/usr/bin/env python3

import json	
import rospy
import tf
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point, Twist
from std_msgs.msg import Float64
from apriltag_ros.msg import AprilTagDetectionArray

dict_apriltag = {}

def callback(data):
    for i in range(len(data.detections)):
        id = data.detections[i].id[0]
        dict_apriltag[id] = data.detections[i].pose.pose.pose

        tag_name = 'tag_' + str(id)
        print(tag_name)
        try:
            (trans, rot) = listener.lookupTransform(tag_name, '/map', rospy.Time(0))
            dict_apriltag[id] = (trans, rot)
        except:
            pass

if __name__ == '__main__':
    rospy.init_node('apriltag_detection', anonymous=True)
    listener = tf.TransformListener()

    sub = rospy.Subscriber("/tag_detections", AprilTagDetectionArray, callback)
    rospy.spin()
    with open('convert.txt', 'w') as convert_file:
        convert_file.write(json.dumps(dict_apriltag))
