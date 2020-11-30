## Benzi-programming-language
A procedural programming language built in Cython and C.
It includes a C++ library [JackScript](http://jackscript.github.io) which is called by C; and then called included into Cython via defining an external declaration.
The project makes use of both C and C++(specifically for Classes and STL) types. 

### Developing (Getting started)
make sure python-dev is installed

The application uses a virtual environment called: venv
 
Activate venv with the following command:
```xml-dtd
source /venv/bin/activate
```

To compile the program, in the root dir:

```xml-dtd
python3 setup.py build_ext --inplace
```
To execute the program, in the root dir:
```xml-dtd
python3 main.py
```

When done developing; deactivate virtual environment with the following command: 

```xml-dtd
deactivate
```


