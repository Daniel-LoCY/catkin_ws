#!/usr/bin/env python3
import rospy
from image_msg_pkg.msg import image
import cv2
from cv_bridge import CvBridge
import sys

if len(sys.argv) == 2:
    path = sys.argv[1]
else:
    sys.exit('Please type the image path')

bridge = CvBridge()

def callback(event, x, y, flag, userdata):
    if event == 1:
        print(x, y)

pub = rospy.Publisher('eventer', image, queue_size=10)
rospy.init_node('eventer', anonymous=True)
msg = image()

img = cv2.imread(path)
cv2.imshow('image', img)

#cv2.setMouseCallback('image', callback)

print('Press "f" to find edge')

while True:
    key = cv2.waitKey(0)
    print(key)
    if key == 113:
        cv2.destroyAllWindows()
        break
    elif key == 102:
        img = bridge.cv2_to_imgmsg(img, encoding='passthrough')
        msg.a = img
        pub.publish(msg)
        cv2.destroyAllWindows()
        break
