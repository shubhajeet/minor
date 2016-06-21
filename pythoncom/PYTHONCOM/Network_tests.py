from nose.tools import *
from Network import *
from ipaddress import *
import netaddr

def setup():
    print "SETUP!"

def teardown():
    print "TEAR DOWN!"

def test_get_macaddress():
    assert (getMacAddress('enp3s0') == EUI("54:ee:75:7e:d4:61")),"correct detection of mac address"

def test_get_ip4():     
    assert (getIpAddress4('wlp2s0') != False), "ipv4 not detected"
    assert (getSubnetv4('wlp2s0') != False), "subnet not detected"

def test_ip6():
    assert (getIpAddress6('wlp2s0') != False), "ipv6 address not detected"
    assert (getSubnetv6('wlp2s0') != False), 'subnet not detected'
    
    
    
    

    
