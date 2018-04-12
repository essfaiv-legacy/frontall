#!/bin/bash

BUILD_DIR=bin
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}
cmake -G "Unix Makefiles" ../
make

cd -

#i686-w64-mingw32-gcc -o bin/frontall.exe main.cpp -mwindows
