#!/usr/bin/env python3


import cv2
import darknet
import time
import rospy
from cv_bridge import CvBridge
from image_msg_pkg.msg import image
from yolo.msg import yolo_info
import argparse



def callback(data):
    rospy.loginfo('get image')
    bridge = CvBridge()
    img = bridge.imgmsg_to_cv2(data.a, desired_encoding='passthrough')
    t_prev = time.time()
    # Fix image format
    frame_rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    frame_resized = cv2.resize( frame_rgb, (width, height))

    # convert to darknet format, save to “ darknet_image “
    darknet_image = darknet.make_image(width, height, 3)
    darknet.copy_image_from_bytes(darknet_image, frame_resized.tobytes())

    # inference
    detections = darknet.detect_image(network, class_names, darknet_image, thresh=thre)
    # darknet.print_detections(detections, show_coordinates)
    darknet.free_image(darknet_image)

    # print(detections, show_coordinates)

    # print(detections)
    info_dic = {    
        'obj': '', 
        'acc': 0.0, 
        'xmin': 0, 
        'xmax': 0, 
        'ymin': 0, 
        'ymax': 0
    }
    info = []
    
    for obj, acc, bxx in detections:
        x, y, w, h = bxx
        xmin = int(round(x - (w / 2)))
        xmax = int(round(x + (w / 2)))
        ymin = int(round(y - (h / 2)))
        ymax = int(round(y + (h / 2)))
        print(obj, acc, xmin, xmax, ymin, ymax)
        info_dic['obj'] = obj
        info_dic['acc'] = acc
        info_dic['xmin'] = xmin
        info_dic['xmax'] = xmax
        info_dic['ymin'] = ymin
        info_dic['ymax'] = ymax
        info.append(info_dic)
    print(info)

    # draw bounding box
    img = darknet.draw_boxes(detections, frame_resized, class_colors)
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    # Show Image and FPS
    fps = int(1/(time.time()-t_prev))
    cv2.rectangle(img, (5, 5), (75, 25), (0,0,0), -1)
    # cv2.putText(image, f'FPS {fps}', (10, 20), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
    # cv2.imwrite('/app/result.jpg', image)
    # cv2.imshow(win_title, image)
    output = bridge.cv2_to_imgmsg(img, encoding='passthrough')
    msg = yolo_info()
    msg.img = output
    msg.info = info
    pub.publish(msg)
    # rospy.loginfo('find object')


def listener():
    rospy.init_node('edge', anonymous=True)
    rospy.Subscriber('capture', image, callback)
    global pub
    pub = rospy.Publisher('edger', yolo_info, queue_size=10)
    # rospy.Service('edge_server', event, event_callback)
    rospy.spin()

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--cfg", default='/app/wider_face/cfg/yolov4-tiny-custom.cfg')
    parser.add_argument("--weight", default='/app/yolov4-tiny-custom_last.weights')
    parser.add_argument("--data", default='/app/wider_face/cfg/face.data')
    args = parser.parse_args()
    # Parameters
    win_title = 'YOLOv4 CUSTOM DETECTOR'
    # cfg_file = 'cfg/yolov4-tiny.cfg'
    # data_file = 'cfg/coco.data'
    # weight_file = '/app/yolov4-tiny.weights'
    cfg_file = args.cfg
    data_file = args.data
    weight_file = args.weight
    thre = 0.25
    show_coordinates = True

    # Load Network
    network, class_names, class_colors = darknet.load_network(
        cfg_file,
        data_file,
        weight_file,
        batch_size=1
    )
    # Get Nets Input dimentions
    width = darknet.network_width(network)
    height = darknet.network_height(network)
    print('ready to detect')
    listener()
