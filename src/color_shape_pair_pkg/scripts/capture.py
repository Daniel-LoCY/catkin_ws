#!/usr/bin/env python3

import rospy
from color_shape_pair_pkg.msg import image
import sys
import cv2
from cv_bridge import CvBridge
import time
import argparse

def talker(img_path, shape, color, frame_count):
    rospy.init_node('capture', anonymous=True)
    bridge = CvBridge()
    img = bridge.cv2_to_imgmsg(img_path, encoding='passthrough')
    msg = image()
    msg.a = img
    msg.frame_count = frame_count

    c = color.replace(' ', '').split(',')
    l = []
    try:
        for i in range(len(c)):
            l.append(int(c[i]))
    except:
        exit('--color argument type failed')
    pub_color = rospy.Publisher('capture_node_color', image, queue_size=10)
    msg.b = l[0]
    msg.g = l[1]
    msg.r = l[2]
    pub_color.publish(msg)

    pub_shape = rospy.Publisher('capture_node_shape', image, queue_size=10)
    msg.shape = int(shape)
    pub_shape.publish(msg)
        
    pub = rospy.Publisher('capture_node', image, queue_size=10)
    pub.publish(msg)
    
def video(file, shape=None, color=None):
    cap = cv2.VideoCapture(file)
    if not cap.isOpened():
        print('Cannot open camera')
        sys.exit()
    else:
        count = 1
        total_frame = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
        while True:
            ret, frame = cap.read()
            if ret:
                frame = cv2.resize(frame, (int(frame.shape[1]/2), int(frame.shape[0]/2)))
                talker(frame, shape, color, count)
                cv2.imshow('original', frame)
                cv2.waitKey(1)
                time.sleep(1/1000)
                print(f' 播放進度： {count}/{total_frame}', end = '\r')
                count = count + 1
            else:break


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--file', help='type image or video path', required=True)
    parser.add_argument('--shape', help="type shape's name", required=True)
    parser.add_argument('--color', help="type color's BGR ex: --color 0,0,255", required=True)
    arg = parser.parse_args()
    file, shape, color = arg.file, arg.shape, arg.color
    video(arg.file, shape=shape, color=color)
