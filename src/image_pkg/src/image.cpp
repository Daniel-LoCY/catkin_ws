#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
using namespace cv;

int imageCallback(const sensor_msgs::ImageConstPtr &msg)
{
    try{
        imshow("img", cv_bridge::toCvShare(msg, "bgr8")->image);
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
    return 0;
}

int main(int argc, char *argv[])
{
    /*初始化節點，並設定節點名*/
    ros::init(argc, argv, "img_deal");
    /*設置節點句柄*/  
    ros::NodeHandle n;

    /*創建顯示窗口*/
    namedWindow("img");
    /*打開創建的窗口*/
    startWindowThread();

    /*設置圖像接受的節點*/
    image_transport::ImageTransport it(n);
    /*設置圖像訂閱者*/
    image_transport::Subscriber sub = it.subscribe("camera/img", 1, imageCallback);

    /*回調響應循環*/
    ros::spin();

    /*關閉窗口*/
    destroyWindow("img");   

    return 0;
}
