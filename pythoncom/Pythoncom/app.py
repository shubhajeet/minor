import sys

import gi
gi.require_version('Gtk','3.0')

from gi.repository import GLib, Gio, Gtk

class MyWindow(Gtk.ApplicationWindow):

    def __init__(self,app,title,height=300,length=300):
        Gtk.Window.__init__(self, title=title,application=app)
        self.set_default_size(height,length)

        #self.grid = Gtk.Grid()
        #self.image = Gtk.image()
        #self.add(self.image)
        
        #self.srcAddLabel = Gtk.Label(label="Source Mac address")
        #self.grid.attach(self.srcAddLabel, 0,0,1,1)
        #self.add(self.grid)
        #self.srcAddEntry = Gtk.Entry()
        #self.add(self.srcAddEntry)
        #self.dstAddEntry = Gtk.Entry()
        #self.add(self.dstAddEntry)
        #self.interface = Gtk.Entry()
        #self.add(self.interface)
        self.ethertype = Gtk.Entry()
        self.add(self.ethertype)
        
        
    def addImage(self,filename):
        try:
            self.image.set_from_file(filename)
        except:
            print 'error file not found'
            return false
        return true
        
class App(Gtk.Application):

    def __init__(self):
        Gtk.Application.__init__(self,
                                 application_id="maharjansujit.com.np",
flags=Gio.ApplicationFlags.FLAGS_NONE)
        self.connect("activate", self.activateCb)

    def activateCb(self,app):
        self.window = MyWindow(self,title="Maccom")
        app.add_window(self.window)
        self.window.show()

if __name__ == '__main__':
    app = App()
    app.run(sys.argv)
