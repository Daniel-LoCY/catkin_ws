#!/usr/bin/env python3

import rospy
from image_msg_pkg.msg import image
import sys
import cv2
from cv_bridge import CvBridge

def talker(img_path):
    img = cv2.imread(img_path)
    bridge = CvBridge()
    img = bridge.cv2_to_imgmsg(img, encoding='passthrough')
    pub = rospy.Publisher('chatter', image, queue_size=10)
    rospy.init_node('senter', anonymous=True)
    # rate = rospy.Rate(1)
    # while not rospy.is_shutdown():
    msg = image()
    msg.a = img
    pub.publish(msg)
        # rate.sleep()

if __name__ == '__main__':
    if len(sys.argv) == 2:
        talker(sys.argv[1])
    else:
        sys.exit('Please type the image path')
