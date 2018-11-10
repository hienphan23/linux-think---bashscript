#Miscellaneous

#Numeric calculations
$((a + 200))      # Add 200 to $a
$((RANDOM%=200))  # Random number 0..200

#Subshells
(cd somedir; echo "I'm now in $PWD")
pwd # still in first directory
Redirection
python hello.py > output.txt   # stdout to (file)
python hello.py >> output.txt  # stdout to (file), append
python hello.py 2> error.log   # stderr to (file)
python hello.py 2>&1           # stderr to stdout
python hello.py 2>/dev/null    # stderr to (null)
python hello.py &>/dev/null    # stdout and stderr to (null)
python hello.py < foo.txt

#Inspecting commands
command -V cd
#=> "cd is a function/alias/whatever"
Trap errors
trap 'echo Error at about $LINENO' ERR
or

traperr() {
  echo "ERROR: ${BASH_SOURCE[1]} at about ${BASH_LINENO[0]}"
}

set -o errtrace
trap traperr ERR
Case/switch
case "$1" in
  start | up)
    vagrant up
    ;;

  *)
    echo "Usage: $0 {start|stop|ssh}"
    ;;
esac
Source relative
source "${0%/*}/../share/foo.sh"
printf
printf "Hello %s, I'm %s" Sven Olga
#=> "Hello Sven, I'm Olga

#Directory of script
DIR="${0%/*}"
Getting options
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -V | --version )
    echo $version
    exit
    ;;
  -s | --string )
    shift; string=$1
    ;;
  -f | --flag )
    flag=1
    ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi
Heredoc
cat <<END
hello world
END
Reading input
echo -n "Proceed? [y/n]: "
read ans
echo $ans
read -n 1 ans    # Just one character
Special variables
$?	Exit status of last task
$!	PID of last background task
$$	PID of shell
See Special parameters.

#Go to previous directory
pwd # /home/user/foo
cd bar/
pwd # /home/user/foo/bar
cd -
pwd # /home/user/foo
