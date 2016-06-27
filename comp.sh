#/bin/bash
path=$1

g++ $path/main.cpp -o $path/app -Wall -std=c++11 -O2

