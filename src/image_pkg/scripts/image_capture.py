#!/usr/bin/env python3

from image_pkg.srv import *
import rospy
import cv2
import sys
import os
from cv_bridge import CvBridge

def handle_add_two_ints(req):
    rospy.wait_for_service('display_image_server')
    bridge = CvBridge()
    img = bridge.imgmsg_to_cv2(req.a, desired_encoding='passthrough')
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    img = cv2.medianBlur(img, 7)
    output = cv2.Laplacian(img, -1, 1, 5)
    output = bridge.cv2_to_imgmsg(output, encoding='passthrough')
    display = rospy.ServiceProxy('display_image_server', display_edge)
    res = display(output)
    print('sent image')
    return transport_imageResponse(output)

def capture_image_server():
    rospy.init_node('capture_image_server')
    s = rospy.Service('capture_image_server', transport_image, handle_add_two_ints)
    print("Ready to capture image.")
    rospy.spin()

if __name__ == "__main__":
    capture_image_server()
