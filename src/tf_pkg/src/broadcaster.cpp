#include <geometry_msgs/Point.h>
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char **argv)
{
    if (argc != 6)
    {
        ROS_ERROR("input argument error");
        return -1;
    }

    std::string frame_name = argv[1];
    std::string child_name = argv[2];
    double x = atof(argv[3]);
    double y = atof(argv[4]);
    double z = atof(argv[5]);
    ros::init(argc, argv, frame_name + "_" + child_name + "_tf_broadcaster");
    ros::NodeHandle nh;

    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        static tf::TransformBroadcaster br;
        tf::Transform transform;
        transform.setOrigin(tf::Vector3(x, y, z));
        tf::Quaternion q;
        q.setRPY(0, 0, 0);
        transform.setRotation(q);
        br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), frame_name, child_name));
        ROS_INFO_STREAM("boardcast: " + frame_name + "-" + child_name + " (" + std::to_string(x) + "," + std::to_string(y) + "," + std::to_string(z) + ")");
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}