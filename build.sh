#!/bin/bash

gcc -o bin/frontall main.c -Wall `pkg-config --cflags --libs gtk+-3.0` -export-dynamic
