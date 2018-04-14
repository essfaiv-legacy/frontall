#!/bin/bash

cd bin
# --targets=latest-linux-x64,latest-linux-x86,latest-x64-win,latest-x86-win
pkg ../factorial.js --options expose-gc --targets=host
