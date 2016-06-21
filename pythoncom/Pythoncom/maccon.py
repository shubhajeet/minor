import socket, sys, struct, os
import netifaces
from PIL import Image

"""
macon 

Object that creates a raw ethenet port

Ethernet packet
==================================================================
|Destination MAC 6 byte| Source MAC 6 byte | Ether type (2 byte) |
==================================================================
==================================================================
| IP, ARP, etc, Payload 46-1500 bytes                            |
==================================================================
=========================
| CRC Checksum (4 bytes)|
=========================

ethertype > 0x6000

"""

class Maccon(object):
    cropsize = (22,22)
    imgFormat = "RGB"
    def __init__(self, interface = "enp3s0"):
        """
        initialization of the socket
        """
        try:
            self.s = socket.socket(socket.AF_PACKET,socket.SOCK_RAW,socket.ntohs(0x0003)) 
            self.s.bind((interface,0))                     
        except socket.error:
            print 'error'
            sys.exit(1)
        self.src_addr = src
        self.dst_addr = dst
        self.ethertype = ethertype

    def grayScale(self,infile,ofile):
        """
        grayScales the give image
        """

        try:
            self.inImage = Image.open(infile)
        except:
            pass
        self.xno = 0
        self.yno = 0
        try:
            self.outImage = Image.new("RGB", self.inImage.size())
        except:
            pass
        xmax = self.inImage.size()
        ymax = self.inImage.size()
        
    
    
    def getMacAddr(self,interface):
        """
        return the acutal mac address of the computer that it is running on
        """
        if interface in netifaces.interfaces():
            addr = netifaces.ifaddresses(interface)
            mac = addr[netifaces.AF_LINK][0]['addr']
            return mac
        else:
            return False
        

    def receive(self):
        """
        listens to receive a frame of data
        """
        while True:
            self.packet, self.addr = self.s.recvfrom(65565)
            dest, src = struct.unpack('!6s6s', self.packet[:12])
            if dest == self.dst_addr:
                print "found packet"
                print self.packet
                return self.packet
            
    def checksum(self):
        """
        calcuates the checksum of the data
        """
        return "\x1a\x2b\x3c\x4d"  
        
    def send(self,payload = ("["*30)+"PAYLOAD"+("]"*30)):
        """ 
        send a frame of raw ethernet frame
        """
        self.s.send(self.dst_addr+self.src_addr+self.ethertype+payload+self.checksum()) 
