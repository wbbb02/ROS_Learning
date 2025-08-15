#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sstream"
int main(int argc, char  *argv[])
{
    setlocale(LC_ALL, "");
    // 初始化ros节点
    ros::init(argc, argv, "publisher");
    // 创建节点句柄
    ros::NodeHandle nh;
    // 创建发布者对象
    ros::Publisher pub = nh.advertise<std_msgs::String>("fang", 10);
    // 创建发布的消息
    std_msgs::String msg;
    // 发布频率
    ros::Rate rate(10);
    // 设置编号
    int count = 0;
    // 编写循环，循环中发布数据
    while (ros::ok())
    {
        count ++;
        // msg.data = "hello";
        std::stringstream ss;
        ss << "hello ---" << count;
        msg.data = ss.str();

        pub.publish(msg);
        // 添加日志
        ROS_INFO("发布的数据是:%s", ss.str().c_str());
        rate.sleep();
        ros::spinOnce();
    }
    
    return 0;
}
