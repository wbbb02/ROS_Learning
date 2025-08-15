#! /usr/bin/env python3
import rospy
"""
    参数服务器操作之删除_Python实现:
    rospy.delete_param("键")
    键存在时，可以删除成功，键不存在时，会抛出异常
"""
if __name__ == '__main__':
    rospy.init_node('param_delet')
    try:
        rospy.delete_param("r_p")
    except Exception as e:
        rospy.logerr("不存在，%s", e)