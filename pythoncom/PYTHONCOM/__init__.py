from sys import * 
from maccon import *
from Network import *
from config import *


if __name__ == '__main__':
    connection = maccon()
    if sys.argv[1] == "s" or sys.argv[1] == "send":
        connection.send()
    else:
        connection.receive()

    
