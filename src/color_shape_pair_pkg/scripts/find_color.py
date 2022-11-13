#!/usr/bin/env python3

import cv2
import numpy as np
import rospy
from color_shape_pair_pkg.msg import image
from color_shape_pair_pkg.srv import color_event
from cv_bridge import CvBridge

class color():
    def __init__(self, b, g, r) -> None:
        self.bridge = CvBridge()
        self.b = b
        self.g = g
        self.r = r
        pass

    def detect(self, img_ndarray):
        ori_img = self.bridge.imgmsg_to_cv2(img_ndarray, desired_encoding='passthrough')
        lower = np.array([self.b-30,self.g-30,self.r-30])
        upper = np.array([self.b+30,self.g+30,self.r+30])
        mask = cv2.inRange(ori_img, lower, upper)
        mask = self.bridge.cv2_to_imgmsg(mask, encoding='passthrough')
        return mask

    def change_color(self, b, g, r):
        self.b = b
        self.g = g
        self.r = r
        pass

c = False
s = color(0,0,0)

def callback(data):
    global s, c
    pub = rospy.Publisher('find_color_node', image, queue_size=10)
    if not c:
        s = color(b=data.b, g=data.g, r=data.r)
        c = True
    resp = s.detect(data.a)
    msg = image()
    msg.a = resp
    pub.publish(msg)

def service_callback(data):
    s.change_color(b=data.b, g=data.g, r=data.r)
    return 'change color ok'

def listener():
    rospy.init_node('find_color', anonymous=True)
    rospy.Subscriber('capture_node_color', image, callback)
    rospy.Service('find_color_service', color_event, service_callback)
    rospy.spin()

if __name__ == '__main__':
    listener()