#!/usr/bin/env python3

import cv2
import numpy as np
import rospy
from color_shape_pair_pkg.msg import image
from color_shape_pair_pkg.srv import shape_event
from cv_bridge import CvBridge

class Shape():
    def __init__(self, shape) -> None:
        self.bridge = CvBridge()
        self.angle = shape
        pass

    def detect(self, img_ndarray):
        ori_img = self.bridge.imgmsg_to_cv2(img_ndarray, desired_encoding='passthrough')

        h, w, ch = ori_img.shape
        result = np.zeros((h, w, ch), dtype=np.uint8)

        gray = cv2.cvtColor(ori_img, cv2.COLOR_BGR2GRAY)
        img = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)[1]
        contour, _ = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        rx, ry = [], []
        for i in contour:
            cv2.drawContours(result, [i], 0, (0, 0, 255), 1)
            approx = cv2.approxPolyDP(i, 0.01 * cv2.arcLength(i, True), True)
            x, y = 0, 0
            approx_len = len(approx)
            for i in approx:
                x = x + i[0][0]
                y = y + i[0][1]
            x = int(x / approx_len)
            y = int(y / approx_len)
            if approx_len == self.angle:
                rx.append(x)
                ry.append(y)
            elif self.angle == 0:
                rx.append(x)
                ry.append(y)
        cv2.putText(result, str(approx_len), (10, 100), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
        cv2.imshow('contour', result)
        cv2.waitKey(1)
        return rx, ry, approx_len, self.angle

    def change_shape(self, shape):
        self.angle = shape

c = False
s = Shape(3)
def callback(data):
    global s, c
    pub = rospy.Publisher('find_shape_node', image, queue_size=10)
    if not c:
        s = Shape(data.shape)
        c = True
    rx, ry, shape, user_shape = s.detect(data.a)
    msg = image()
    msg.shapex = rx
    msg.shapey = ry
    msg.shape = shape
    msg.frame_count = data.frame_count
    msg.user_shape = user_shape
    pub.publish(msg)

def service_callback(data):
    s.change_shape(data.shape)
    return f'change shape {data.shape} ok'

def listener():
    rospy.init_node('find_shape', anonymous=True)
    rospy.Subscriber('capture_node_shape', image, callback)
    rospy.Service('find_shape_service', shape_event, service_callback) # for user_interface
    rospy.spin()

if __name__ == '__main__':
    print('ready to find shape')
    listener()