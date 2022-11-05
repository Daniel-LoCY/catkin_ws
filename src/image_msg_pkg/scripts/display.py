#!/usr/bin/env python3

import rospy
from image_msg_pkg.msg import image
import cv2
from cv_bridge import CvBridge

def callback(data):
    rospy.loginfo('get edge image')
    bridge = CvBridge()
    img = bridge.imgmsg_to_cv2(data.a, desired_encoding='passthrough')
    rospy.loginfo('show image')
    cv2.imshow('1', img)
    #cv2.moveWindow('1', 30, 30)
    cv2.waitKey(1)
    # cv2.destroyAllWindows()

def listener():
    rospy.init_node('displayer', anonymous=True)
    rospy.Subscriber('edger', image, callback)
    rospy.spin()

if __name__ == '__main__':
    print('ready to display image')
    # cv2.namedWindow('1')
    listener()
