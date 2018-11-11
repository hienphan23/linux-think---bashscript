src_para = '. '
dest_para = '/home/hienpt3/'
seconds = 30
description = 'autosync file from $src_para to $dest_para every $seconds'
times = 0
echo description

while [ 1 $lt 10 ]; do
	echo 'sync file $times times'
	echo 'Ctrl + C to stop'
	rsync -r $src_para root@10.30.80.45:/$dest_para 
done


