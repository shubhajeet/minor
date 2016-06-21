# -*- coding: utf-8 -*-
"""
Created on Thu Jun 16 

@author: sameer
|------------------------------------------------------------------------------------------ |
|dest(6 bytes)  |  source(6bytes)  |  ethertype(2 bytes)  |  payload(n bt)  | crc(4bytes)   |
|-------------------------------------------------------------------------------------------|
"""



import socket,sys,struct
try:
    s=socket.socket(socket.AF_PACKET,socket.SOCK_RAW,socket.ntohs(0x0003))  # ntohs== network byte to host bytes (0x0003=protocol no)
    s.bind(("enp3s0",0))                                #  bind to interface eth0
    print('socket created')
except socket.error:
    print('error')
    sys.exit()
while True:
    #recvfrom returns  message, address(we don't need address), argument is buffer size
    packet,addr= s.recvfrom(65565)          #we don't care addr as everything is inside packet
    # !-> byte order, 6s ->six bytes into  string 
    dest=struct.unpack('!6s6s',packet[:12])    #get source and destination from first 12 bytes and store in list, 
    if dest[0] =="\x01\x02\x03\x04\x05\x06":  #list[0] has destination and check it
        print('found packet')
        #do other things
    
