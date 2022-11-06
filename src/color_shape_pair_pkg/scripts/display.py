#!/usr/bin/env python3

import rospy
from color_shape_pair_pkg.msg import image
from color_shape_pair_pkg.srv import event
import cv2
from cv_bridge import CvBridge
import numpy as np

user_input = False
user_input_color = {}

def callback(data):
    global user_input
    if data.check == 1:
        if not user_input:
            b = data.b
            g = data.g
            r = data.r
            color = [b, g, r]
        else:
            b = user_input_color['b']
            g = user_input_color['g']
            r = user_input_color['r']
            color = [b, g, r]
        # print(b,g,r)
        bridge = CvBridge()
        img = bridge.imgmsg_to_cv2(data.a, desired_encoding='passthrough')
        low = []
        high = []
        for i in color:
            i = i-20 if i-10>=0 else 0
            low.append(i)
        for i in color:
            i = i+20 if i+10<=255 else 255
            high.append(i)
        low = np.array(low)
        high = np.array(high)
        mask = cv2.inRange(img, low, high)
        img = cv2.bitwise_and(img, img, mask=mask)
        cv2.imshow('image', img)
        cv2.waitKey(1)
    else:
        rospy.loginfo('no frame')
        img = np.zeros((100,100,3), np.uint8)
        cv2.imshow('image', img)
        cv2.waitKey(1)

def event_callback(data):
    global user_input
    user_input = True
    user_input_color['b'] = data.b
    user_input_color['g'] = data.g
    user_input_color['r'] = data.r
    return 'ok'

def listener():
    rospy.init_node('displayer', anonymous=True)
    rospy.Subscriber('capture_node', image, callback)
    rospy.Service('display_service', event, event_callback)
    rospy.spin()



if __name__ == '__main__':
    print('ready to display image')
    listener()