from nose.tools import *
import Pythoncon

server = none
receiver = none

def setup():
    print "SETUP!"
    server = Maccon()
    receiver = Maccon()

def teardown():
    print "TEAR DOWN!"

def test_get_macaddress():
    print "testing correct detection of macaddress"
    assert (server.getMacAddress() == "54:ee:75:7e:d4:61")
    
def test_send_receive():
    print "running sever and receiver"
    data = "this is a trial"
    assert(receiver.listen() == data)
    assert(sender.send(data))

    
    
