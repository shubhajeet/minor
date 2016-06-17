import socket, sys, struct, os

class maccon(object):
    def __init__(self, interface = "enp3s0", src = "\x01\x02\x03\x04\x05\x06",dst = "\x01\x02\x03\x04\x05\x06" , ethertype = "\x08\x01"):
        try:
            self.s = socket.socket(socket.AF_PACKET,socket.SOCK_RAW) 
            self.s.bind((interface,0))                     
        except socket.error:
            print 'error'
            sys.exit(1)
        self.src_addr = src
        self.dst_addr = dst
        self.ethertype = ethertype

    def receive(self):
        while True:
            self.packet, self.addr = self.s.recvfrom(65565)
            dest, src = struct.unpack('!6s6s', self.packet[:12])
            if dest == self.dst_addr:
                print "found packet"
                print self.packet
                return self.packet
            
    def checksum(self):
        return "\x1a\x2b\x3c\x4d"  
        
    def send(self,payload = ("["*30)+"PAYLOAD"+("]"*30)):
        self.s.send(self.dst_addr+self.src_addr+self.ethertype+payload+self.checksum()) 
