#include <ros/ros.h>
#include <iostream>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
using namespace cv;

class Camera_driver{
public:
    /*構造函數*/
    Camera_driver(ros::NodeHandle &n, int video_source = 0):
        it(n),
        cap(video_source){
            /*判斷攝像頭是否正常打開,若正常打開isOpened返回1*/
            if(!cap.isOpened())
            {
                ROS_ERROR("Cannot open the camera!\n");
            }
            /*設置主題名和緩衝區*/   
            pub_img = it.advertise("camera/img", 1);

            /*初始化CvImage智能指針，CvImage爲Mat與ROS圖像之間轉換的載體*/
            frame = boost::make_shared<cv_bridge::CvImage>();
            /*設置ROS圖片爲BGR且每個像素點用1個字節來表示類似與CV_8U*/
            frame->encoding = sensor_msgs::image_encodings::BGR8;
        }

    /*圖像發佈函數*/
    int img_publish()
    {
        /*將攝像頭獲取到的圖像存放在frame中的image*/
        cap >> frame->image;
        /*判斷是否獲取到圖像，若獲取到圖像，將其轉化爲ROS圖片*/
        if(!(frame->image.empty()))
        {
            frame->header.stamp = ros::Time::now();
            pub_img.publish(frame->toImageMsg());
        }

        return 0;       
    }

private:    
    /*設置圖片節點*/
    image_transport::ImageTransport it;
    /*設置圖片的發佈者*/
    image_transport::Publisher pub_img;
    /*設置存放攝像頭圖像的變量*/    
    VideoCapture cap;
    /*設置cvImage的智能指針*/
    cv_bridge::CvImagePtr frame;
};

int main(int argc, char *argv[])
{
    /*初始化節點，並設定節點名*/
    ros::init(argc, argv, "img_publiser");
    /*設置節點句柄*/
    ros::NodeHandle n;

    /*判斷輸入參數是否完成*/
    if(argv[1] == NULL)
    {
        ROS_WARN("Please choose the camera you want to use !");
        return 1;
    }

    /*獲取打開攝像機的設備號*/
    int video_source = 0;
    int default_p = 0;
    istringstream default_param(argv[1]);
    default_param >> default_p;
    n.param<int>("video_source", video_source, default_p);

    /*定義攝像機對象*/
    Camera_driver camera(n, video_source);

    /*設置主題的發佈頻率爲5Hz*/
    ros::Rate loop_rate(5);
    /*圖片節點進行主題的發佈*/
    while(ros::ok())
    {
        camera.img_publish();
        ros::spinOnce();
        /*按照設定的頻率來將程序掛起*/
        loop_rate.sleep();
    }

    return 0;
}
