#/bin/bash
path=$1
name=$2

g++ $path/$name/$name.cpp -o $path/$name/$name -Wall -O2
