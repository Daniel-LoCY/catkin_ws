#!/usr/bin/env python3

import rospy
from color_shape_pair_pkg.msg import image
import sys
import cv2
from cv_bridge import CvBridge
import time
import numpy as np

def talker(img_path='', check=1):
    if type(img_path) == np.ndarray:
        bridge = CvBridge()
        img = bridge.cv2_to_imgmsg(img_path, encoding='passthrough')
        pub = rospy.Publisher('capture_node', image, queue_size=10)
        rospy.init_node('capture', anonymous=True)
        msg = image()
        msg.a = img
        msg.b = int(sys.argv[2])
        msg.g = int(sys.argv[3])
        msg.r = int(sys.argv[4])
        msg.check = check
        pub.publish(msg)
    else:
        pub = rospy.Publisher('capture_node', image, queue_size=10)
        rospy.init_node('capture', anonymous=True)
        msg = image()
        msg.check = check
        pub.publish(msg)
    
def video(path):
    cap = cv2.VideoCapture(path)
    if not cap.isOpened():
        print('Cannot open camera')
        sys.exit()
    else:
        count = 1
        total_frame = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
        while True:
            ret, frame = cap.read()
            if ret:
                talker(frame)
                #cv2.imshow('video', frame)
                #if cv2.waitKey(100) == ord('q'):
                #    break
                time.sleep(1/1000)
                print(f' 播放進度： {count}/{total_frame}', end = '\r')
                count = count + 1
            else:
                talker(check=0)
                break


if __name__ == '__main__':
    if len(sys.argv) == 5:
        video(sys.argv[1])
    else:
        sys.exit('Please type the image path')
