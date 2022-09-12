#include <ros/ros.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "hello_cpp_node");
    ros::NodeHandle handler;
    ROS_INFO("This is C++");
}