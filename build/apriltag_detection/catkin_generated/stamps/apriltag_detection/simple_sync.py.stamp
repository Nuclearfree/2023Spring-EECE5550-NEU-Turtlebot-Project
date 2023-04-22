#!/usr/bin/env python3

from sensor_msgs.msg import Image, CameraInfo
import rospy

image_pub = rospy.Publisher('sync_image', Image, queue_size=10)
camera_info_pub = rospy.Publisher('sync_camera_info', CameraInfo, queue_size=10)

kCamera_info = None

def camera_info_callback(camera_info):
    global kCamera_info
    kCamera_info = camera_info

def image_callback(image):
    # Solve all of perception here...
    if kCamera_info is None:
        return
    kCamera_info.header.stamp = image.header.stamp
    image_pub.publish(image)
    camera_info_pub.publish(kCamera_info)

if __name__ == '__main__':
    rospy.init_node('simmple_synchronise')
    rospy.Subscriber('raspicam_node/image', Image, image_callback)
    rospy.Subscriber('raspicam_node/camera_info', CameraInfo, camera_info_callback)

    rospy.spin()