#! /usr/bin/env python3
import cv2
import numpy as np
import time
import threading
import rospy
from color_shape_pair_pkg.srv import event

check = 0
value = []

def timing():
    return
    global check
    # print('start')
    time.sleep(0.5)
    if check:
        print('send', value.pop())
        check = 0
    else:
        value.pop(0)

def on_change(x):
    return
    global check
    check = 1
    t = threading.Thread(target=timing)
    t.start()
    value.append(x)

def on_click(a, b):
    b = cv2.getTrackbarPos('B', 'choose')
    g = cv2.getTrackbarPos('G', 'choose')
    r = cv2.getTrackbarPos('R', 'choose')
    service = rospy.ServiceProxy('display_service', event)
    resp = service(b=b, r=r, g=g)
    print(resp.s)

cv2.namedWindow('choose')
img = np.zeros((100,100,3), np.uint8)
cv2.imshow('choose', img)
cv2.createTrackbar('R', 'choose', 0, 255, on_change)
cv2.createTrackbar('G', 'choose', 0, 255, on_change)
cv2.createTrackbar('B', 'choose', 0, 255, on_change)
cv2.createButton('SEND RGB DATA', on_click, 'test', cv2.QT_PUSH_BUTTON, 0)

while True:
    b = cv2.getTrackbarPos('B', 'choose')
    g = cv2.getTrackbarPos('G', 'choose')
    r = cv2.getTrackbarPos('R', 'choose')
    img[:] = [b, g, r]
    cv2.imshow('choose', img)
    if cv2.waitKey(1) == ord('q'):break
cv2.destroyAllWindows()