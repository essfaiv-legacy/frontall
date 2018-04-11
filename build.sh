#!/bin/bash

BUILD_DIR=bin
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}
cmake -G "Unix Makefiles" ../
make

cd -
