#/bin/bash
path=$1
name=$2

g++ $path/$name.cpp -o $path/$name -Wall -O2
