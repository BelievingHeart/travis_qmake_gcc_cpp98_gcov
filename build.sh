#!/bin/bash
echo "Normal run"
qmake travis_qmake_gcc_cpp98_gcov.pro
make
./travis_qmake_gcc_cpp98_gcov
./clean.sh
echo "Coverage run"
qmake travis_qmake_gcc_cpp98_gcov_gcov.pro
make
./travis_qmake_gcc_cpp98_gcov_gcov
gcov main_gcov.cpp
gcov do_magic.cpp
cat main_gcov.cpp.gcov
cat do_magic.cpp.gcov