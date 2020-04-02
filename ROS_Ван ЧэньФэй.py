#!/usr/bin/env python
import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import math
# dictionary
print("started")
sides_ = {	
	'right': 0,
	'front': 0,
	'left': 0,
}
# min func
def laser(msg): 
	# 720 sensors 
	global sides_
	sides_ = { 
		'right': min(min(msg.ranges[0:143]),2), 
		'front': min(min(msg.ranges[288:431]),2),
		'left': min(min(msg.ranges[576:719]),22),
	}

rospy.init_node('reading_laser') 
sub = rospy.Subscriber('/base_scan', LaserScan, laser)
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

while not rospy.is_shutdown(): 
	msg = Twist()
	print("front:", sides_['front'])
	print("left:", sides_['left'])
	print("right:", sides_['right'])
	if sides_['front'] > 0.5: 
		err = (-0.7 + sides_['right'])# following right wall
		msg.angular.z = -err * 0.4
		msg.linear.x = (sides_['front']) * 0.1
	if sides_['front'] <= 0.5:
		msg.linear.x = 0
		msg.angular.z = -0.2
		

	#msg.linear.x = (sides_['front']-0.4) * 0.5
	#else: 
	#	msg.linear.x = 0
	#	msg.angular.z = -0.2
	
	
	pub.publish(msg)
	
