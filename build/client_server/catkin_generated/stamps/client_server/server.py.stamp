#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from client_server.srv import * 

def callback(req):
    response = project1Response()
    if req.temp == None and req.pre == None and req.hum== None:
        rospy.logerr("No data received")
        response.check_data = "No data is sent"
    else:
        response.check_data = "Data Received"
        if req.temp >= 10 and req.temp <= 100:
            rospy.loginfo("The received temperature data is %x ", req.temperature)
            response.temp_range = "The temperature data is on range"
        else:
            rospy.logwarn("The received data is out of range")
            response.temp_range = "the temperature data is out of range"  
        
        if req.pressure >= .95 and req.pressure <= 1.2:
            rospy.loginfo("The received pressure data is %x ", req.pressure)
            response.pre_range = "The pressure data are on range"
        else:
            rospy.logwarn("The received data is out of range")
            response.pre_range = "The pressure data is out of range"   
        if req.humidity >= .7 and req.humidity <= .95:
            rospy.loginfo("The received humidity data is %x ", req.humidity)
            response.hum_range  = "The humidity data are on range"
        else:
            rospy.logwarn("The received data is out of range") 
            response.hum_range  = "The humidity  data is out of range"  
    return response

if __name__ == "__main__":
    rospy.init_node("server") 
    rospy.Service("my_service", project1, callback)
    rospy.spin()   