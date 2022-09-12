#include "ros/ros.h"
#include "std_srvs/Empty.h"

bool trigger(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
    ROS_INFO("Service Called");
    return true;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Basic_Service");
    ros::NodeHandle nh;

    ros::ServiceServer service = nh.advertiseService("trigger", trigger);
    ROS_INFO("Server ready");
    ros::spin();

    return 0;
}