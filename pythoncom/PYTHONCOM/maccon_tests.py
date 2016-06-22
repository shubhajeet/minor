from nose.tools import *
from maccon import *
from PIL import Image
from multiprocessing import Process

server = Maccon()
receiver = Maccon()

def setup():
    print "SETUP!"
   

def teardown():
    print "TEAR DOWN!"

def test_pic_send_receive():
    print "running"

def test_send_receive():
    print "running sever and receiver"
    data = "this is a trial"
    p1 = Process(target = receiver.receive())
    p2 = Process(target = sender.send(data))
    p1.start()
    p2.start()
    

    
    
    
    
