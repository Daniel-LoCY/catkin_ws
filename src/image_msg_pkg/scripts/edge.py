#!/usr/bin/env python3

import rospy
from image_msg_pkg.msg import image
from image_msg_pkg.srv import event
import cv2
from cv_bridge import CvBridge

x = 150

def callback(data):
    global x
    rospy.loginfo('get image')
    bridge = CvBridge()
    img = bridge.imgmsg_to_cv2(data.a, desired_encoding='passthrough')
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    blurred = cv2.GaussianBlur(gray, (5, 5), 0)
    canny = cv2.Canny(blurred, 30, x)
    output = bridge.cv2_to_imgmsg(canny, encoding='passthrough')
    msg = image()
    msg.a = output
    pub.publish(msg)
    rospy.loginfo('find edge sucess')
    rospy.loginfo(x)

def event_callback(data):
    global x
    x = data.a
    print(x)
    return 'ok'

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber('chatter', image, callback)
    global pub
    pub = rospy.Publisher('edger', image, queue_size=10)
    rospy.Service('edge_server', event, event_callback)
    rospy.spin()

if __name__ == '__main__':
    print('ready to get image and find edge')
    listener()
