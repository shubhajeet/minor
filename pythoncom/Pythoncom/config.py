import configobj
"""
Reads the default configuration file so that it can be easily accessed
"""
class ConfigFile(object):
    """
    Represents a single ConfigFile
    """
    def __init__(self, filename):
        try:
            print "reading the previous configfile"
            self.configuration = ConfigObj(filename, raise_errors=True, file_error= True, default_encoding = "json")
        except:
            print "previous configuration file not found"
            self.configuration = ConfigObj(filename, raise_errors=True, file_error= True, default_encoding = "json", create_empty= True)

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
        
