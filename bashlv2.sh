### Loops:
for i in /etc/rc.*; do
	echo $i
done

while true; do

done

for i in {1..5} do
	echo "Welcome $i"
done

for i in {5..50..5}; do
	echo "Welcome $i"
done

cat file.txt | while read line; do
	echo $line
done

### Functions
myfunc() {
	echo "hello $1"
}

function myfunc() {echo "hello $1"}
myfunc() {
	local myresult='some value'
	echo $myresult
}
$#	Number of arguments
$*	All arguments
$@	All arguments, starting from first
$1	First argumen

myfunc() {
  return 1
}
if myfunc; then
  echo "success"
else
  echo "failure"
fi


### Conditionals:
[ STRING = STRING ]	Equal
[ STRING != STRING ]	Not Equal
[ -z STRING ]	Empty string
[ -n STRING ]	Not empty string
[ NUM -eq NUM ]	Equal
[ NUM -ne NUM ]	Not equal
[ NUM -lt NUM ]	Less than
[ NUM -le NUM ]	Less than or equal
[ NUM -gt NUM ]	Greater than
[ NUM -ge NUM ]	Greater than or equal
[[ STRING =~ STRING ]]	Regexp
(( NUM < NUM ))	Numeric conditions
[ -o noclobber ]	If OPTIONNAME is enabled
[ ! EXPR ]	Not
[ X ] && [ Y ]	And
[ X ] || [ Y ]	Or

#File conditions:
[ -e FILE ]	Exists
[ -r FILE ]	Readable
[ -h FILE ]	Symlink
[ -d FILE ]	Directory
[ -w FILE ]	Writable
[ -s FILE ]	Size is > 0 bytes
[ -f FILE ]	File
[ -x FILE ]	Executable
[ FILE1 -nt FILE2 ]	1 is more recent than 2
[ FILE1 -ot FILE2 ]	2 is more recent than 1
[ FILE1 -ef FILE2 ]	Same files

#Example of condition:
# String
if [ -z "$string" ]; then
  echo "String is empty"
elif [ -n "$string" ]; then
  echo "String is not empty"
fi
# Combinations
if [ X ] && [ Y ]; then
  ...
fi
# Regex
if [[ "A" =~ "." ]]
if (( $a < $b ))
if [ -e "file.txt" ]; then
  echo "file exists"
fi

