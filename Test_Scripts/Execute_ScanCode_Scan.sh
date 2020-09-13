ScanCode_DIR=~/scancode

echo $0

./extractcode $1
./scancode -clip --json-pp - $1

exit $?