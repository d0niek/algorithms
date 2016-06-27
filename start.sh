#/bin/bash
path=$1

if [ ! -d $path/tests ]; then
    mkdir -p $path/tests;
fi

touch $path/tests/test0.in;
touch $path/tests/test0.out;

if [ ! -f $path/main.cpp ]; then
    cp ./template.cpp $path/main.cpp;
fi

