#!/usr/bin/env python3

import rospy
from color_shape_pair_pkg.msg import image
from color_shape_pair_pkg.srv import event, shape_event, color_event
import cv2
from cv_bridge import CvBridge
import numpy as np
import time
import threading


class show():
    def __init__(self) -> None:
        self.bridge = CvBridge()
        self.mask_dict = {}
        self.shape_dict = {}
        self.frame_dict = {}
        self.count = 1
        self.start = False
        self.timer = threading.Thread(target=self.setTimer)
        self.time = 0

    def show_image(self):
        while True:
            # print(self.shape_dict.keys())
            try:
                bridge = CvBridge()
                output = bridge.imgmsg_to_cv2(self.frame_dict[str(self.count)], desired_encoding='passthrough')
                if type(self.mask_dict[str(self.count)]) == np.ndarray:
                    output = cv2.bitwise_and(output, output, mask = self.mask_dict[str(self.count)]) 
                shapex, shapey, shape = self.shape_dict[str(self.count)]
                for i in range(len(shapex)):
                    if shape == 3:
                        cv2.putText(output, 'triangle', (shapex[i]-10, shapey[i]), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
                    elif shape == 4:
                        cv2.putText(output, 'rectangle', (shapex[i]-10, shapey[i]), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
                    elif shape == 5:
                        cv2.putText(output, 'penatgon', (shapex[i]-10, shapey[i]), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
                    else:
                        cv2.putText(output, 'circle', (shapex[i]-10, shapey[i]), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
                self.shape_dict.pop(str(self.count))        
                self.mask_dict.pop(str(self.count))        
                self.frame_dict.pop(str(self.count))      
                self.count = self.count + 1
                cv2.imshow('result', output)
                cv2.waitKey(1)
            except Exception as e:
                self.count = self.count + 1
                time.sleep(0.1)
                # print(e)
                pass

    def setTimer(self):
        while self.time < 3:
            time.sleep(1)
            self.time = self.time + 1
        print('no frame')

    def change_frame(self, imgmsg, frame_count):
        self.frame_dict[str(frame_count)] = imgmsg

    def change_mask(self, mask, frame_count):
        mask = self.bridge.imgmsg_to_cv2(mask, desired_encoding='passthrough')
        self.mask_dict[str(frame_count)] = mask

    def change_shape(self, x, y, shape, frame_count):
        self.shape_dict[str(frame_count)] = [x, y, shape]

def color_callback(data):
    s.change_mask(data.a, data.frame_count)

def callback(data):
    s.change_frame(data.a, data.frame_count)

def shape_callback(data):
    s.change_shape(data.shapex, data.shapey, data.shape, data.frame_count)
    if not s.start:
        s.count = data.frame_count
        t.start()
        s.start = True
        # s.timer.daemon = True
        # s.timer.start()
    s.time = 0

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
    global s, t
    rospy.init_node('displayer', anonymous=True)
    rospy.Subscriber('find_color_node', image, color_callback)
    rospy.Subscriber('find_shape_node', image, shape_callback)
    rospy.Subscriber('capture_node', image, callback)
    rospy.Service('display_service', event, event_callback)
    s = show()
    t = threading.Thread(target=s.show_image)
    t.daemon = True
    rospy.spin()

if __name__ == '__main__':
    print('ready to display image')
    listener()