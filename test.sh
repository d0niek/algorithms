#/bin/bash
path=$1
name=$2
number=$3
out=$path/out

if [ ! -d $out ]; then
    mkdir $out;
fi

for i in `seq 0 $number`; do
    /usr/bin/time -f "test $i: %e" ./$path/$name < $path/tests/test$i.in > $out/test$i.out;
    diff -wqB $path/tests/test$i.out $out/test$i.out;
done;
