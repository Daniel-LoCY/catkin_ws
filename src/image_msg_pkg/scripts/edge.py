#!/usr/bin/env python3

import rospy
from image_msg_pkg.msg import image
import cv2
from cv_bridge import CvBridge

def callback(data):
    rospy.loginfo('get image')
    bridge = CvBridge()
    img = bridge.imgmsg_to_cv2(data.a, desired_encoding='passthrough')
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    img = cv2.medianBlur(img, 7)
    output = cv2.Laplacian(img, -1, 1, 5)
    output = bridge.cv2_to_imgmsg(output, encoding='passthrough')
    msg = image()
    msg.a = output
    pub.publish(msg)
    rospy.loginfo('find edge sucess')

def event_callback(data):
    print(data.a)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber('chatter', image, callback)
    rospy.Subscriber('eventer', image, callback)
    global pub
    pub = rospy.Publisher('edger', image, queue_size=10)
    rospy.spin()

if __name__ == '__main__':
    print('ready to get image and find edge')
    listener()
