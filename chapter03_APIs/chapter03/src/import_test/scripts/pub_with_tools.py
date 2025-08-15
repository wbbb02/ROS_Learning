#! /usr/bin/env python3
import rospy
import tools
from import_test.msg import tool

if __name__ == '__main__':
    rospy.init_node('pub_with_tools')
    pub = rospy.Publisher('number', tool, queue_size=10)
    num01 = tool()
    num01.IntMsg01 = tools.num
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        pub.publish(num01)
        rate.sleep()