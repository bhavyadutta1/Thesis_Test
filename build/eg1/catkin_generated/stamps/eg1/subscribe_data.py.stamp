#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from eg1.msg import Position


def callback_string(data):
    rospy.loginfo("RECEIVED DATA: %s", data.data)

def callback_custom(data):
    rospy.loginfo("Profinet:%s  Main_portal:%f  Gripper:%f", data.profinet_msg, data.main_portal, data.gripper)


def subscribe_string_values():
    rospy.init_node('subscribe_data', anonymous=True)
    rospy.Subscriber('string_topic', String, callback_string)
    rospy.spin()


def subscribe_custom_values():
    rospy.Subscriber('custom_msg_topic', Position, callback_custom)
    rospy.spin()


if __name__ == '__main__':
    try:
        subscribe_string_values()
        subscribe_custom_values()
    except rospy.ROSInterruptException:
        pass
