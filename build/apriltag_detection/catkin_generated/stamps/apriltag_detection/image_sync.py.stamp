#!/usr/bin/env python3

import message_filters
from sensor_msgs.msg import Image, CameraInfo
import rospy

image_pub = rospy.Publisher('sync_image', Image, queue_size=10)
camera_info_pub = rospy.Publisher('sync_camera_info', CameraInfo, queue_size=10)

def callback(image, camera_info):
    # Solve all of perception here...
    image_pub.publish(image)
    camera_info_pub.publish(camera_info)

if __name__ == '__main__':
    rospy.init_node('image_synchronise')
    image_sub = message_filters.Subscriber('raspicam/image', Image)
    info_sub = message_filters.Subscriber('raspicam/camera_info', CameraInfo)

    ts = message_filters.TimeSynchronizer([image_sub, info_sub], 10)
    ts.registerCallback(callback)
    rospy.spin()