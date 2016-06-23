from sys import * 
from maccon import *
from Network import *
from config import *


if __name__ == '__main__':
    connection = Maccon()
    if sys.argv[1] == "s" or sys.argv[1] == "send":
        connection.send()
    elif sys.argv[1] == "r" or sys.argv[1] == "receive":
        connection.receive()
    elif sys.argv[1] == "f" or sys.argv[1] == "file":
        connection.grayScale(sys.argv[2],sys.argv[3])
    
        

    
