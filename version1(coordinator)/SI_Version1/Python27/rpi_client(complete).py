import serial
import string
import array
from time import sleep
import binascii
import dba
from decimal import *
import time
import socket   
import sys
global data             # Import socket module

skt = socket.socket()         # Create a socket object
host = socket.gethostname() # Get local machine name
port = 12345          
skt.connect(('172.16.64.202', port))
# Reserve a port for your service.
try_number = 0
while True:
    
    data1=skt.recv(1024)
    data=data1.encode('HEX')
    print data
    if len(data) > 0:
        start = data.find('15') + 3
        end = data.find('454e44', start)
        print data[start:end]
        s = data
        
        s1 = s[32:34]
        s2 = s[34:36]
        s3 = s[36:38]
        s4 = s[38:40]
        s5 = s[40:42]
        s6 = s[42:44]
        s7 = s[44:46]
        
        print "\nBEGIN"
        print "Sensor Node : " + str(int(s1, 16))
        print "Soil Moisture Level (one): " + str(100-((int(s2, 16)*0.39)))
        print "Soil Moisture Level (two): " + str(100-((int(s3, 16)*0.39)))
        print "External Temperature (C): " + str(int(s4, 16))
        print "Humidity (%): " + str(int(s5, 16))
        print "Underground Temperature (C): " + str(int(s6, 16))
        print "Water Flow Data: " + str(int(s7, 16))
        print "END\n"
        if len(data) > 0:
            f=open('file.txt','a')
            f.write("\nBEGIN")
            f.write("\nSensor Node: " + str(int(s1, 16)))
            f.write("\nSoil Moisture Level (one): " + str(100-(int(s2, 16)*0.4)))
            f.write("\nSoil Moisture Level (two): " + str(100-(int(s3, 16)*0.4)))
            f.write("\nExternal Temperature (C): " + str(int(s4, 16)))
            f.write("\nHumidity (%): " + str(int(s5, 16)))
            f.write("\nUnderground Temperature (C): " + str(int(s6, 16)))
            f.write("\nWater Flow Data: " + str(int(s7, 16)))
            f.write("\nEND")			
            f.close()
        sleep(3)
        try_number += 1
        #print 'Waiting data... '+str(try_number)

ser.close()




