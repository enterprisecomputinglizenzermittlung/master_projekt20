ScanCode_DIR=~/scancode

echo $0
cd $ScanCode_DIR
./extractcode $1
./scancode -clip --json-pp - $1

exit $?
