#!/usr/bin/env python
import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import math
# задаем словарь
print("started")
sides_ = {	
	'right': 0,
	'front': 0,
	'left': 0,
}
# определяем какие значения соответствуют сторонам
# датчик не видит дальше 2
def laser(msg): 
	 
	global sides_
	sides_ = { 
		'right': min(min(msg.ranges[0:143]),2), 
		'front': min(min(msg.ranges[288:431]),2),
		'left': min(min(msg.ranges[576:719]),2),
	}
# задаем ноду
rospy.init_node('reading_laser') 
# подписываемся на информацию с датчика и информацию о положении
sub = rospy.Subscriber('/base_scan', LaserScan, laser)
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

while not rospy.is_shutdown(): 
	msg = Twist()
	print("front:", sides_['front'])
	print("left:", sides_['left'])
	print("right:", sides_['right'])
	if sides_['front'] > 0.5:                     #Если не тупик
		err = (-0.7 + sides_['right'])            #Пропорциональный регулятор по углу, едем вдоль правой стенки
		msg.angular.z = -err * 0.4
		msg.linear.x = (sides_['front']) * 0.1    #Пропорциональный регулятор по линейной скорости
	if sides_['front'] <= 0.5:                    #Если тупик, разворачиваемся  
		msg.linear.x = 0
		msg.angular.z = -0.2
		
	
	
	pub.publish(msg)
	
# Пропорциональный регулятор используется из-за простоты в настройке. 
# Конструктивные неточности и прочие статические ошибки отсутствуют, поэтому интегральная составляющая не нужна
# Дифференциальная составляющая возможна, но в ней нет нужды - робот и так едет плавно
# 0.5 и 0.7 - расстояния, подобранные вручную из импирических соображений
# Коэффициенты 0.4 и 0.1 также подобранны вручную и ограничивают максимальную возможную скорость.

