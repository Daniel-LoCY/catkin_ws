#!/usr/bin/env python3

import rospy
from color_shape_pair_pkg.msg import image
from color_shape_pair_pkg.srv import event, shape_event, color_event
import cv2
from cv_bridge import CvBridge
import numpy as np


class show():
    def __init__(self) -> None:
        self.mask = None
        self.shapex = []
        self.shapey = []
        self.shape = 0
        self.bridge = CvBridge()

    def show_image(self, imgmsg):
        bridge = CvBridge()
        output = bridge.imgmsg_to_cv2(imgmsg, desired_encoding='passthrough')
        if type(self.mask) == np.ndarray:
            output = cv2.bitwise_and(output, output, mask = self.mask) 
        for i in range(len(self.shapex)):
            if self.shape == 3:
                cv2.putText(output, 'triangle', (self.shapex[i]-10, self.shapey[i]), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
            elif self.shape == 4:
                cv2.putText(output, 'rectangle', (self.shapex[i]-10, self.shapey[i]), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
        cv2.imshow('frame', output)
        cv2.waitKey(1)

    def change_mask(self, mask):
        mask = self.bridge.imgmsg_to_cv2(mask, desired_encoding='passthrough')
        self.mask = mask

    def change_shape(self, x, y, shape):
        self.shapex = x
        self.shapey = y
        self.shape = shape

def color_callback(data):
    s.change_mask(data.a)

def callback(data):
    s.show_image(data.a)

def shape_callback(data):
    s.change_shape(data.shapex, data.shapey, data.shape)

def event_callback(data):
    if data.shape != 0:
        shape = rospy.ServiceProxy('find_shape_service', shape_event)
        resp = shape(data.shape)
        print(resp.s)
    color = rospy.ServiceProxy('find_color_service', color_event)
    resp1 = color(data.b, data.g, data.r)
    print(resp1.s)
    return 'change ok'

def listener():
    global s
    rospy.init_node('displayer', anonymous=True)
    rospy.Subscriber('find_color_node', image, color_callback)
    rospy.Subscriber('find_shape_node', image, shape_callback)
    rospy.Subscriber('capture_node', image, callback)
    rospy.Service('display_service', event, event_callback)
    s = show()
    rospy.spin()

if __name__ == '__main__':
    print('ready to display image')
    listener()