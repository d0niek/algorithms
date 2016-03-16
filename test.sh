#/bin/bash
path=$1
name=$2
number=$3
out=$path/$name/out

if [ ! -d $out ]; then
    mkdir $out;
fi

for i in `seq 0 $number`; do
    /usr/bin/time -f "test $i: %e" $path/$name/$name < $path/$name/tests/test$i.in > $out/test$i.out;
    diff -wqB $path/$name/tests/test$i.out $out/test$i.out;
done;
