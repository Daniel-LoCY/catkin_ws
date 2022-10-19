#!/usr/bin/env python3

import sys
import rospy
from image_pkg.srv import *
import cv2
from cv_bridge import CvBridge

def add_two_ints_client(x):
    rospy.wait_for_service('capture_image_server')
    try:
        bridge = CvBridge()
        transport_imag = rospy.ServiceProxy('capture_image_server', transport_image)
        resp1 = transport_imag(x)
        #print(type(resp1.b))
        resp1 = bridge.imgmsg_to_cv2(resp1.b, desired_encoding='passthrough')
        return (resp1)
    except rospy.ServiceException:
        print ("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        x = sys.argv[1]
    else:
        print ('請輸入參數')
        sys.exit(1)
    try:
        bridge = CvBridge()
        x = bridge.cv2_to_imgmsg(cv2.imread(x), encoding='passthrough')
        a = (add_two_ints_client(x))
    except:
        print('fail')
