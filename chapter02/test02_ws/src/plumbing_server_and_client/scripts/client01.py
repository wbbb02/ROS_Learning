#! /usr/bin/env python3
import rospy
from plumbing_server_and_client.srv import Addints, AddintsRequest, AddintsResponse
import sys
"""
    需求: 
        编写两个节点实现服务通信，客户端节点需要提交两个整数到服务器
        服务器需要解析客户端提交的数据，相加后，将结果响应回客户端，
        客户端再解析

    客户端实现:
        1.导包
        2.初始化 ROS 节点
        3.创建请求对象
        4.发送请求
        5.接收并处理响应

    优化:
        加入数据的动态获取


"""
if __name__ == '__main__':
    args = rospy.myargv(argv=sys.argv)
    # 判断参数长度
    if len(sys.argv) > 3:
        rospy.logerr("参数数量不对")
        sys.exit(1)

    rospy.init_node("client01")
    client = rospy.ServiceProxy("addInts", Addints)
    # 组织请求数据，发送请求
    # 解析传入的参数
    num1 = int(sys.argv[1])
    num2 = int(sys.argv[2])
    # rosrun plumbing_server_and_client client01.py 1 2
    # 等待server启动
    # 方式一
    client.wait_for_service()
    # 方式二
    # rospy.wait_for_service("addInts")
    try:
        response = client.call(num1, num2)
        rospy.loginfo("相应的数据：%d", response.sum)
    except Exception as e:
        rospy.loginfo(e)