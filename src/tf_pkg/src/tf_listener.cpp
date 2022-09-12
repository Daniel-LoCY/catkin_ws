#include <geometry_msgs/Point.h>
#include <ros/ros.h>
#include <tf/transform_listener.h>

int main(int argc, char **argv)
{
    if (argc != 3)
    {
        ROS_ERROR("input argument error");
        return -1;
    }

    std::string target_frame_name = argv[1];
    std::string source_frame_name = argv[2];

    ros::init(argc, argv, target_frame_name + "_" + source_frame_name + "_tf_listener");
    ros::NodeHandle node;
    tf::TransformListener listener;



    ros::Rate rate(10.0);
    while (node.ok())
    {
        tf::StampedTransform transform;
        try
        {
            listener.lookupTransform(target_frame_name, source_frame_name, ros::Time(0), transform);
            double x = transform.getOrigin().x();
            double y = transform.getOrigin().y();
            double z = transform.getOrigin().z();
            ROS_INFO_STREAM(target_frame_name + "-" + source_frame_name + ": x= " + std::to_string(x) + " y= " + std::to_string(y) + " z= " + std::to_string(z));
        }
        catch (tf::TransformException ex)
        {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
        }

        rate.sleep();
    }
    return 0;
};