#/bin/bash
path=$1
name=$2
out=$path/$name/out

if [ ! -d $out ]; then
    mkdir $out;
fi

i=1

for file in $path/$name/tests/*.in; do
    file=$(echo $file | rev | cut -d '/' -f 1 | rev | cut -d '.' -f 1)

    /usr/bin/time -f "$((i++)). time %e memo %M" $path/$name/$name < $path/$name/tests/$file.in > $out/$file.out
    diff -wqB $path/$name/tests/$file.out $out/$file.out;
done;
