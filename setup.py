from distutils.core import setup
# from setuptools import setup
from Cython.Build import cythonize

setup(ext_modules = cythonize('shell.pyx'))
setup(ext_modules = cythonize('benzi.pyx'))
setup(ext_modules = cythonize('index.pyx'))