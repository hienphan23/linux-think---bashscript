echo "this is autoshutdown app:"
echo "0. shutdown now"
echo "1. shutdown after x seconds"
echo "2. shutdown after x minutes"
echo "3. shutdown after x hour y minute z seconds"
echo "4. restart computer"
echo "5. cancel shutdown"

read option

if [ $option = 0 ]; do
	shutdown -h now
elif [ $option = 1 ]; do
	read sec
	shutdown -t 
elif [ $option = 2]; do
	read min
	shutdown +$val
elif [ $option = 3]; do
	read hour
	read minute
	read sec
	shutdown $x:$y:$z
elif [ $option = 4]; do
	echo 'can use sudo reboot'
	shutdown -r
elif [ $option = 5]; do
	echo 'cancel shutdown'
	shutdown -c
else do
	echo 'option not valid'
done
