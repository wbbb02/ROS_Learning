#! /usr/bin/env python3
import rospy
"""
    参数服务器操作之新增与修改(二者API一样)_Python实现:
        需求：在参数服务器中设置机器人属性、型号、半径
            rospy.set_param
"""
if __name__ == '__main__':
    rospy.init_node('param_set')
    # 新增参数
    rospy.set_param("type_p", "wbb01")
    rospy.set_param("r_p", 0.15)
    # 修改参数
    rospy.set_param("type_p", "wbb02")
    rospy.set_param("r_p", 0.22)