#! /usr/bin/env python3
import rospy
"""
    参数服务器操作之查询_Python实现:    
        get_param(键,默认值)
            当键存在时，返回对应的值，如果不存在返回默认值
        get_param_cached 和前者一样，效率更高
        get_param_names 获取所有参数键的集合
        has_param   判断是否包含某个键
        search_param    寻找某个键并返回键名
"""
if __name__ == '__main__':
    rospy.init_node('param_get')
    # get_param
    radius = rospy.get_param("r_p", 0.51)
    radius2 = rospy.get_param("r_p2", 0.5)
    rospy.loginfo("radius = %f", radius)
    rospy.loginfo("radius2 = %f", radius2)

    # get_param_cached 和前者区别就是效率更高，可从缓存中查询
    radius = rospy.get_param_cached("r_p", 0.51)
    radius2 = rospy.get_param_cached("r_p2", 0.5)
    rospy.loginfo("radius = %f", radius)
    rospy.loginfo("radius2 = %f", radius2)

    # get_param_names
    names = rospy.get_param_names()
    for name in names:
        rospy.loginfo("names = %s", name)

    # has_param
    flag1 = rospy.has_param("r_p")
    if flag1:
        rospy.loginfo("flag1 = %s", flag1)
    else:
        rospy.loginfo("no flag1 = %s", flag1)

    # search_param
    key = rospy.search_param("r_p")
    if key:
        rospy.loginfo("key = %s", key)