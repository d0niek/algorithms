#/bin/bash
path=$1
out=$path/out

if [ ! -d $out ]; then
    mkdir $out;
fi

i=1

for file in $path/tests/*.in; do
    file=$(echo $file | rev | cut -d '/' -f 1 | rev | cut -d '.' -f 1)

    /usr/bin/time -f "$((i++)). time %e memo %M" $path/app < $path/tests/$file.in > $out/$file.out
    diff -wqB $path/tests/$file.out $out/$file.out;
done;

