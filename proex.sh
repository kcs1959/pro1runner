function run(){
	local ans="y"
	local file=$1
	while [ -n "$ans" -a "$ans" != "n" ] 
	do
		if [ $ans = "e" ]
		then
			vim $file
		fi
		echo $file
		cat $file
		gcc $file -Wall -Wextra -std=c99 -lm -o a.out
		./a.out
		echo
		echo "execute again? [yne]"
		read ans
	done
	rm ./a.out
}

for file in ./*
do
	if [ ${file##*.} = "c" ]
	then
		run $file
	fi
done

