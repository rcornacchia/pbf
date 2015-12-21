import socket
import sys
UDP_IP = "160.39.231.6"
UDP_PORT = int(sys.argv[1])

sock = socket.socket(socket.AF_INET, # Internet
                      socket.SOCK_DGRAM) # UDP
sock.bind((UDP_IP, UDP_PORT))

while True:
      data, addr = sock.recvfrom(1024) # buffer size is 1024 bytes
      print "received message:", data
