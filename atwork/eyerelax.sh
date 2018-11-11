seconds = 20*60
while [ 1 -lt 10 ]; do
	sleep ${seconds}
	echo 'please relax your eye after 20 minutes'
	echo 'press any key if you do...'
	read x
	echo 'ok tks'
done
