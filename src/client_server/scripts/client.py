#!/usr/bin/env python3
import rospy
from client_server.srv import service , serviceRequest
import random
# from std_msgs.msg import String


if __name__ == "__main__": 

    rospy.init_node('client')
    client = rospy.ServiceProxy("my_service",service)
    client.wait_for_service()
    request = serviceRequest()
    request.temp = 60
    request.hum = 60
    request.pre = 60

    response = client(request)
    print("the tempreture sensor reading = %s" ,request.temp)
    rospy.logwarn(" the range : "+"10<="+str(request.temp)+"<=100"+" the reading is "+response.temp_range)

    print("the humidity sensor reading = %s" ,request.hum)
    rospy.logwarn(" the range : "+"0.7<="+str(request.hum)+"<=0.95"+" the reading is "+response.hum_range)

    print("the tempreture sensor reading = %s" ,request.pre)
    rospy.logwarn(" the range : "+"0.95<="+str(request.pre)+"<=1.2"+" the reading is "+response.pre_range)