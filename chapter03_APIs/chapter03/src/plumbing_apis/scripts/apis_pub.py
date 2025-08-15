#! /usr/bin/env python3
import rospy
from plumbing_apis.msg import Msg01

if __name__ == '__main__':
    # 初始化ROS节点
    """
        参数：
            name --- 设置节点名称
            argv=None --- 封装节点调用时传递的参数，ROS可以解析使用
            anonymous=False --- 可以为节点名称生成随即后缀，解决重名问题
        使用：
            argv的使用
                可以按照ROS中制定的语法格式传参
                rosrun pkg xxx.py _A:=xxx
            anonymous的使用
                解决节点重名问题，节点后缀随机数
                rospy.init_node("pub01", anonymous=True)
    """
    rospy.init_node("pub01", anonymous=True)
    # 创建发布者对象
    """
        内容：latch
        作用：
        使用：bool值，默认False，可以将发布的最后一条数据保存
             pub = rospy.Publisher("talk01", Msg01, queue_size=10, latch=True)
    """
    pub = rospy.Publisher("talk01", Msg01, queue_size=10, latch=True)
    msg = Msg01()
    rate = rospy.Rate(1)
    count = 0
    rospy.sleep(1)
    while not rospy.is_shutdown():
        count += 1
        if count <= 10:
            msg.IntMsg01 = 0+count
            pub.publish(msg)
            rospy.loginfo(msg)
        rate.sleep()