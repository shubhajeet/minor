try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description' : 'Pythoncom',
    'author' : {'Sujit Maharjan'},
    'url' : 'url to get it at.',
    'download_url' : 'download.maharjansujit.com.np',
    'author_email' : 'mail@maharjansujit.com.np',
    'version' : 0.1,
    'install_requires' : ['nose','netifaces'],
    'packages' : ['Pythoncom'],
    'scripts' : [],
    'name' : 'FPGA based implementation of Digital Image Processor'
}

setup(**config)
