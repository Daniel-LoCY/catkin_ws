#include "ros/ros.h"
#include "std_srvs/Empty.h"
#include <cstdlib>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Basic_Client");

    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<std_srvs::Empty>("trigger");
    std_srvs::Empty srv;
    if (client.call(srv))
    {
        ROS_INFO("Service call succeed");
    }
    else
    {
        ROS_ERROR("Failed to call service");
        return 1;
    }

    return 0;
}