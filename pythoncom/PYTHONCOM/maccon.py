import socket, sys, struct, os
import netifaces
from PIL import Image
from config import *
from Network import *
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
    cropsize = (10,10)
    imgFormat = "RGB"
    outImgFormat = "L"
    def __init__(self, interface = "enp3s0", dst = "\x00\x01\x02\x03\x05\x06", configfile = "conf.ini"):
        """
        initialization of the socket
        """
        try:
            self.s = socket.socket(socket.AF_PACKET,socket.SOCK_RAW,socket.ntohs(0x0003)) 
            self.s.bind((interface,0))                     
        except socket.error:
            print 'error'
            sys.exit(1)
        self.cnf = ConfigFile(configfile)
        self.src_addr = self.cnf.getDeviceMacAddress()
        self.dst_addr = dst
        self.ethertype = self.cnf.getEtherType()

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
            self.outImage = Image.new("L", self.inImage.size)
        except:
            print "could not create new Image"
            sys.exit()
        self.pixr = self.inImage.load()
        self.pix2 = self.outImage.load()
        xmax, ymax = self.inImage.size
        xc, yc = Maccon.cropsize
        pacx, pacy = 0 , 0
        xp, yp = xmax / xc, ymax/yc
        for pacx in range(0,xp):
            for pacy in range(0,yp):
                payload = ""
                for x in range(pacx*xc,(pacx+1)*xc):
                    for y in range(pacy*yc,(pacy+1)*yc):
                        payload = payload + "%c%c%c" % self.pixr[x,y]
                self.send(payload)
                rpayload = self.receive()
                for x in range(pacx*xc,(pacx+1)*xc):
                    for y in range(pacy*yc,(pacy+1)*yc):
                        format = "B"*(xmax*ymax*3)
                        print format
                        print xmax*ymax
                        pixgot = struct.unpack(format,payload)
                        #decoding the packet
        #when all the files have been recieved
        self.outImage.save(ofile)
        self.inImage.show()
        self.outImage.show()
    
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
