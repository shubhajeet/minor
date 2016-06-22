from nose.tools import *
from os import *
from config import *
from netaddr import *

fn = "trial.inf"
cnf = ConfigFile(fn)
def setup_func():
    pass

def teardown_func():
    try:
        os.remove(fn)
    except OSError:
        assert False, "os error"
    assert(os.path.isfile(fn)),"config file not destryoed"
    
def test_create():
    assert(os.path.isfile(fn)),"config file doesnot exists"

    
def test_write_read():
    mac = "09:90:40:a3:01:01"
    etherType = 15
    cnf.setMac(mac)
    cnf.setEtherType(etherType)
    cnf.save()
    assert (cnf.getDeviceMacAddress() == EUI(mac)), "not reading same value working"
    assert (cnf.getEtherType() == etherType), "not reading same value working"
    

