#! /usr/bin/env python3

import rospy
from std_msgs.msg import String
import time

if __name__ == '__main__':
    # 初始化ROS节点
    rospy.init_node('pub02')
    # 创建发布者对象
    pub = rospy.Publisher('che', String, queue_size=10)
    # 创建数据
    msg = String()
    # 发布频率
    rate = rospy.Rate(1)
    # 技术去
    count = 0
    # 解决数据丢失
    time.sleep(1)
    while not rospy.is_shutdown():
        count += 1
        msg.data = 'Hello World!' + str(count)
        pub.publish(msg)
        rospy.loginfo(msg.data)
        rate.sleep()