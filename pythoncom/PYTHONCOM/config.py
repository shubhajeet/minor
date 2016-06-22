from configobj import *
from netaddr import *
"""
Reads the default configuration file so that it can be easily accessed
"""
class ConfigFile(object):
    """
    Represents a single ConfigFile
    """
    def __init__(self, filename):
        try:
            
            self.configuration = ConfigObj(filename, raise_errors=True, file_error= True)
            print "reading the previous configfile"
        except:
            
            self.configuration = ConfigObj(filename, create_empty= True)
            print "previous configuration file not found"

    def save(self):
        """
        saves the cofiguration
        """
        return self.configuration.write()

    def getDeviceMacAddress(self):
        """
        gets the device mac address
        implemented so that we dont have to dyanmically get the mac address
        """
        return self.configuration['MAC']

    def setMac(self, MAC):
        """
        sets the new MAC address
        """
        self.configuration['MAC'] = EUI(MAC)
        self.save()

    def getEtherType(self):
        """
        gets the device mac address
        implemented so that we dont have to dyanmically get the mac address
        """
        return self.configuration['EtherType']

    def setEtherType(self, etherType):
        """
        sets the new MAC address
        """
        self.configuration['EtherType'] = etherType 
        self.save()
        
