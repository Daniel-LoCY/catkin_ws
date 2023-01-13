#!/usr/bin/env python3

import rospy
from image_msg_pkg.msg import image
import sys
import cv2
from cv_bridge import CvBridge
import time

def talker(img_path):
    bridge = CvBridge()
    img = bridge.cv2_to_imgmsg(img_path, encoding='passthrough')
    pub = rospy.Publisher('capture', image, queue_size=10)
    rospy.init_node('capture', anonymous=True)
    msg = image()
    msg.a = img
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
                time.sleep(1/10)
                print(f' 播放進度： {count}/{total_frame}', end = '\r')
                count = count + 1
            else:
                break


if __name__ == '__main__':
    if len(sys.argv) == 2:
        video(sys.argv[1])
    else:
        sys.exit('Please type the image path')