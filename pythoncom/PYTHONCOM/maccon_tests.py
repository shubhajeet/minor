from nose.tools import *
form maccon import *
from PIL import Image

server = None
receiver = None

def setup():
    print "SETUP!"
    server = Maccon()
    receiver = Maccon()

def teardown():
    print "TEAR DOWN!"

def test_send_receive():
    print "running sever and receiver"
    data = "this is a trial"
    assert(receiver.listen() == data)
    assert(sender.send(data))

def test_pic_send_receive():
    print "running"
    
    
    
    
