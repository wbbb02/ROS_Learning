#! /usr/bin/env python3

import rospy
from plumbing_publisher_subscriber.msg import Person

def callback(person):
    rospy.loginfo("姓名：%s年龄：%d身高%f", person.name, person.age, person.height)

if __name__ == '__main__':
    rospy.init_node("Person01_sub")
    pub = rospy.Subscriber("Person01", Person, callback)
    rospy.spin()