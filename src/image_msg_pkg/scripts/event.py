#!/usr/bin/env python3
import rospy
from image_msg_pkg.srv import event
import cv2
from cv_bridge import CvBridge
import sys

if len(sys.argv) == 2:
    arg = sys.argv[1]
else:
    sys.exit('Please type the image path')

bridge = CvBridge()

edge = rospy.ServiceProxy('edge_server', event)

resp = edge(int(arg))

print(resp.b)
