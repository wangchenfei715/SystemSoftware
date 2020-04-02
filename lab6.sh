#!/bin/bash

echo 'Print 
$ roscore 
before using this. Change terminal then

'
echo 'Print
$ rosrun turtlesim turtlesim_node

'

rosservice call kill turtle1

#2
rosservice call /spawn 1 7 0 turtle1
rosservice call turtle1/teleport_relative 1 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rosservice call turtle1/teleport_relative 0.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rosservice call turtle1/teleport_relative 1.2 0.5
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -3.58]'
rosservice call turtle1/teleport_relative 1 0
rosservice call kill turtle1

#8
rosservice call /spawn 2.5 7 0 turtle1
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5707]'
rosservice call turtle1/teleport_relative 1.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 1.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rosservice call kill turtle1

#0
rosservice call /spawn 3.5 7 0 turtle1
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5707]'
rosservice call turtle1/teleport_relative 1.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 1.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0

rosservice call kill turtle1


#2
rosservice call /spawn 5 7 0 turtle1
rosservice call turtle1/teleport_relative 1 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rosservice call turtle1/teleport_relative 0.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rosservice call turtle1/teleport_relative 1.2 0.5
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -3.58]'
rosservice call turtle1/teleport_relative 1 0
rosservice call kill turtle1

rosservice call kill turtle1

#5
rosservice call /spawn 6.5 7 0 turtle1


rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.7, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.9]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, -3.5]'
rosservice call kill turtle1
rosservice call /spawn 6.5 7 0 turtle1
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.8, 0.0, 0.0]' '[0.0, 0.0, 0.0]'

rosservice call /kill turtle1


#8
rosservice call /spawn 8.5 7 0 turtle1
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5707]'
rosservice call turtle1/teleport_relative 1.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 1.6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5707]'
rosservice call turtle1/teleport_relative 0.8 0
rosservice call kill turtle1

