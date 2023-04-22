#include <ros/ros.h>

#include <sensor_msgs/LaserScan.h>
//#include "restriction_point/test_srv.h"

ros::Publisher pub;

bool publish_scan = true;

void scan_restriction (const sensor_msgs::LaserScan& input)
{
    if(!publish_scan)
    {
        ROS_INFO("skip publish scan--------------");
        return ;
    }
    sensor_msgs::LaserScan output = input;
    output.range_max = 1.2;
    // Publish the data.
    pub.publish (output);
}

//bool serviceCallback(restriction_point::test_srv::Request& req,
//                     restriction_point::test_srv::Response& res)
//{
//    if(req.pub > 0)
//    {
//        publish_scan = true;
//        ROS_INFO("start publish scan--------------");
//    }
//    else{
//        publish_scan = false;
//        ROS_INFO("stop publish scan--------------");
//    }
//    return true;
//}

int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init (argc, argv, "restriction_point");
    ros::NodeHandle nh;

    // Create a ROS subscriber for the input point cloud
    ros::Subscriber sub = nh.subscribe ("scan", 1, scan_restriction);

    // Create a ROS publisher for the output point cloud
    pub = nh.advertise<sensor_msgs::LaserScan> ("output_scan", 10);

    // Create a ROS service
//    ros::ServiceServer server = nh.advertiseService("scan_control", serviceCallback);

    // Spin
    ros::spin ();
}
