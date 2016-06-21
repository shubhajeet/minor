import netifaces
import netaddr
"""
Network

using netifaces to detect and test network connection
"""
class Network(object):
    """
    Class that checks the Network interface
    """
    def interfaces():
        """
        returns a list of valid network interfaces
        """
        return netifaces.interfaces()
    
    def getMacAddress(interface):
        """
        returns the mac adresss of the network interface
        """
        if interface in netifaces.interfaces():
            addr = netifaces.ifaddresses(interface)
            mac = EUI(addr[netifaces.AF_LINK][0]['addr'])
            return mac
        else:
            return False

    def isValidInterface(interface):
        """
        returns true if interface is valid else false
        """
        if interface in netifaces.interfaces():
            return True
        else:
            return False

    def isConnected(interface):
        """
        returns true if interface has valid ip addresss
        """
        if isValidInterface(interface):
            addr = netifaces.ifaddresses(interface)
            mac = addr[netifaces.AF_INET][0]['addr']
            if mac:
                return True
            else:
                return False
        else:
            return False

    def getIpAddress4(interface):
        """
        returns ipv4 of the interface
        """
        if isValidInterface(interface):
            addr = netifaces.ifaddresses(interface)
            ip = addr[netifaces.AF_INET][0]['addr']
            if mac:
                return True
            else:
                return False
        else:
            return False
        pass

    def getIpAddress6(interface):
        """
        returns ipv6 of the interface
        """
        pass

    def getSubnetv4(interface):
        """
        returns ipv4 subnet
        """
        pass

    def getSubnetv6(interface):
        """
        returns ipv6 subnet
        """
        pass
    
