basicstream - ANSI/RGB Text Formatting Library for C++
-------------------------------------------------------------

basicstream is a header-only C++ library for formatting terminal output with ANSI colors,
including 8-color, 256-color, and true RGB 24-bit support. It provides convenient print()
and input() functions with color parameters.

Installation:
-------------

1. Place the `basicstream` file (without extension) in this folder.
2. Double-click `install_basicstream.bat`.
3. The script will copy the file to your MinGW include directory.
4. You can then use the library in your code like this:

    #include <basicstream>

Compilation:
------------

g++ main.cpp -o myprogram

Requirements:
-------------

- Windows with MinGW installed.
- g++ must be in the system PATH.
- MinGW must contain an `include` folder in its root directory.

License:
--------

See LICENSE.txt for usage conditions.
