import serial
import string
from time import sleep
#import MySQLdb
import socket   
import sys  
import struct
import time
global data

serialport = serial.Serial("COM7", 9600, timeout=0)
s = socket.socket()
print "Socket successfully created"


port = 12345                


s.bind(('', port))        
print "socket binded to %s" %(port)

# put the socket into listening mode
s.listen(5)     
print "socket is listening"            

# a forever loop until we interrupt it or 
# an error occurs

   # Establish connection with client.
c, addr = s.accept()     
print 'Got connection from', addr

   # send a thank you message to the client. 
c.send('Thank you for connecting')

	# This function reads data from serial port and prints received values in human readable format
def read_data(rx):
	data = rx.lstrip().split(" ")

	

while True:
	data = serialport.read(1024)
	sleep(5)

   	if len(data) > 0:
			print "Got data: "+data
			sleep(1)
	#read_data(data)
	
	c.send(data)
	sleep(2)
	f=open('file-server.txt','a')
	f.write(data)
	f.close()
sleep(5)

################
















serialport.close()













              # Now wait for client connection.

      