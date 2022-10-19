#!/usr/bin/env python3

import rospy
import cv2
from cv_bridge import CvBridge
from image_pkg.srv import *
import time
	
count = 0

def show(img):
	global count
	print('show image')
	#print(count)
	if count == 0:
		cv2.namedWindow('My Image', cv2.WINDOW_AUTOSIZE)
		count = 1
	cv2.imshow('My Image', img)
	cv2.waitKey(0)
	cv2.destroyWindow('My Image')

def handle_display_image(req):
	bridge = CvBridge()
	img = bridge.imgmsg_to_cv2(req.a, desired_encoding='passthrough')
	show(img)
	print('show complete')
	return display_edgeResponse(req.a)
	
def display_image_server():
	rospy.init_node('display_image_server')
	rospy.Service('display_image_server', display_edge, handle_display_image)
	print('Ready to display image')
	rospy.spin()
	
if __name__ == '__main__':
	display_image_server()
