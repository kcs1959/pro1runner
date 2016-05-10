echo "backup!"
find . -maxdepth 1 -name "*.c" -exec mv {} ./backup \;

echo "nth project?"
read n
echo "number of a?"
read a
echo "number of b?"
read b
echo "number of c?"
read c
echo "number of d?"
read d

if [ $a -ne 0 ]
then
	for i in `seq --format=%02g 1 $a`
	do
		echo `printf "assignment_%02d-a-${i}.c" $n`
		echo > `printf "assignment_%02d-a-${i}.c" $n`
	done
fi
if [ $b -ne 0 ]
then
	for i in `seq --format=%02g 1 $b`
	do
		echo `printf "assignment_%02d-b-${i}.c" $n`
		echo > `printf "assignment_%02d-b-${i}.c" $n`
	done
fi
if [ $c -ne 0 ]
then
	for i in `seq --format=%02g 1 $c`
	do
		echo `printf "assignment_%02d-c-${i}.c" $n`
		echo > `printf "assignment_%02d-c-${i}.c" $n`
	done
fi
if [ $d -ne 0 ]
then
	for i in `seq --format=%02g 1 $d`
	do
		echo `printf "assignment_%02d-d-${i}.c" $n`
		echo > `printf "assignment_%02d-d-${i}.c" $n`
	done
fi
