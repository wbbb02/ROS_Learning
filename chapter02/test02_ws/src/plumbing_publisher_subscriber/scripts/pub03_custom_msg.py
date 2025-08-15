#! /usr/bin/env python3

import time
import rospy
from plumbing_publisher_subscriber.msg import Person

if __name__ == '__main__':
    rospy.init_node("Person01_pub")
    pub = rospy.Publisher("Person01", Person, queue_size=10)
    # 创建Person数据
    p = Person()
    p.name = "温步步"
    p.age = 18
    p.height = 190
    # 创建Rate对象
    rate = rospy.Rate(1)
    time.sleep(1)
    while not rospy.is_shutdown():
        pub.publish(p)
        rospy.loginfo("姓名：%s，年龄：%d，身高：%f", p.name, p.age, p.height)
        rate.sleep()