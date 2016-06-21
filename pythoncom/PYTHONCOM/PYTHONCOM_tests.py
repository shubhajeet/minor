from nose.tools import *
import PYTHONCOM

def setup():
    print "SETUP!"

def teardown():
    print "TEAR DOWN!"


def test_basic():
    print "hello"
    
