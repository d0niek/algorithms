#/bin/bash
path=$1
name=$2

if [ ! -d $path/$name/tests ]; then
    mkdir -p $path/$name/tests;
fi

touch $path/$name/tests/test0.in;
touch $path/$name/tests/test0.out;

if [ ! -f $path/$name/$name.cpp ]; then
    cp ./template.cpp $path/$name/$name.cppx;
fi
