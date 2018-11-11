src = "."
dest = "no"
message = "empty message"
branch_to_push = "hienpt3"

echo 'please enter message to commit'
read message

echo 'git auto add, commit and push to origin'
echo 'please check status'
git status
echo 'you ok to commit? (y or n)'
read input
if [ $input = 'y']; do
	git add $src && git commit -m "message" && git push origin $branch_to_push	
	echo 'ok commit done, please check log'
	git log
done


