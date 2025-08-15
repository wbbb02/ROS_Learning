#! /usr/bin/env python3
import rospy

def doMsg(event):
    rospy.loginfo("------------")
    rospy.loginfo("调用回调函数的时刻：%d", event.current_real.secs)
if __name__ == '__main__':
    # 需求1：演示时间相关操作
    rospy.init_node("time01")
    # 获取时刻，距离1970年01月01日 00:00:00
    time_now = rospy.Time.now()
    rospy.loginfo("当前时刻%f", time_now.to_sec())
    rospy.loginfo("当前时刻%d", time_now.secs)
    # 设置指定
    time1 = rospy.Time(100.5) #距离1970年01月01日 00:00:00逝去100.5s，封装成Time对象
    rospy.loginfo("设置时刻1:%.2f",time1.to_sec())
    # 从某个时间值获取时间对象
    time3 = rospy.Time.from_sec(543.21)
    rospy.loginfo("设置时刻3:%.2f",time3.to_sec())

    # 需求2：程序执行中停顿5s
    rospy.loginfo("-----------------------------休眠前-----------------------------")
    # 封装一个持续时间对象为5s
    dr = rospy.Duration(5)
    # 休眠
    # rospy.sleep(dr)
    rospy.loginfo("-----------------------------休眠后-----------------------------")

    # 需求3：获取程序开始执行的时刻，计算程序结束的时间
    # 获取一个时刻
    t1 = rospy.Time.now()
    # 设置一个持续时间
    d1 = rospy.Duration(5)
    # 相加为结束时间
    t2 = t1 + d1
    rospy.loginfo("%f", t1.to_sec())
    rospy.loginfo("%f", t2.to_sec())
    # 持续时间相加
    d2 = dr + d1
    rospy.loginfo(d2.secs)
    # 时刻之间不能加减

    # 定时器
    #定时器设置
    """    
    def __init__(self, period, callback, oneshot=False, reset=False):
        Constructor.
        @param period: 回调函数的时间间隔
        @type  period: rospy.Duration
        @param callback: 回调函数
        @type  callback: function taking rospy.TimerEvent
        @param oneshot: 设置为True，就只执行一次，否则循环执行
        @type  oneshot: bool
        @param reset: if True, timer is reset when rostime moved backward. [default: False]
        @type  reset: bool
    """
    timer = rospy.Timer(rospy.Duration(2), doMsg, oneshot=False)
    rospy.spin()