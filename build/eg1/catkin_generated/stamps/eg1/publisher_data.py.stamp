#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from eg1.msg import Position


def publish_string_values():
    pub = rospy.Publisher('string_topic', String, queue_size=10)
    rospy.init_node('publisher_data', anonymous=True)
    rate = rospy.Rate(1)
    rospy.loginfo("Node Started Publishing Data now")
    while not rospy.is_shutdown():
        msg = "Hello - %s" % rospy.get_time()
        pub.publish(msg)
        rate.sleep()


def publish_custom_values():
    pub_custom = rospy.Publisher('custom_msg_topic', Position, queue_size=10)
    while not rospy.is_shutdown():
        custom_val = Positon()
        custom_val.profinet_msg = "A654DC87452"
        custom_val.main_portal = 69.0
        custom_val.gripper = 684.848
        pub_custom.publish(custom_val)


if __name__ == '__main__':
    try:
        publish_string_values()
        publish_custom_values()
    except rospy.ROSInterruptException:
        pass
