#! /usr/bin/env python3
"""
    需求:
        编写两个节点实现服务通信，客户端节点需要提交两个整数到服务器
        服务器需要解析客户端提交的数据，相加后，将结果响应回客户端，
        客户端再解析

    服务器端实现:
        1.导包
        2.初始化 ROS 节点
        3.创建服务端对象
        4.回调函数处理请求并产生响应
        5.spin 函数

"""
import rospy
from plumbing_server_and_client.srv import Addints, AddintsRequest, AddintsResponse

# 参数封装了请求数据
# 返回值：相应数据
def doNums(request):
    num1 = request.num1
    num2 = request.num2
    sum = num1 + num2
    response = AddintsResponse()
    response.sum = sum
    rospy.loginfo("服务器解析num1 = %d, num2 = %d，响应数据sum = %d", num1, num2, sum)
    return response

if __name__ == '__main__':
    rospy.init_node("server01")
    # 服务端对象
    server = rospy.Service("addInts", Addints, doNums)
    rospy.loginfo("AddInts服务器已经启动")
    rospy.spin()