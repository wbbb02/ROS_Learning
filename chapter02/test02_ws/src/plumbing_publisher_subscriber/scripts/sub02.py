#! /usr/bin/env python3

import rospy
from std_msgs.msg import String

def doMsg(msg):
    rospy.loginfo(msg.data)

if __name__ == '__main__':
    # 初始化ros节点
    rospy.init_node('sub02')

    # 创建订阅者duixiang
    sub = rospy.Subscriber("che", String, doMsg, queue_size=10)
    # spin()
    rospy.spin()