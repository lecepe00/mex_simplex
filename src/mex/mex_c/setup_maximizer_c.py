from distutils.core import setup
from Cython.Build import cythonize
setup(ext_modules = cythonize("maximizer_class_c.pyx", compiler_directives = {'language_level' : 3}))