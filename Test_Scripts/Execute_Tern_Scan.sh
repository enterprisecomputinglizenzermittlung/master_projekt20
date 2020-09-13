Tern_DIR=~/tern/ternenv

echo $0

# No Container image has been created for this project yet. Only existing images from other projects could be scanned
# Executing test scan for debian:buster
sudo tern report -i debian:buster

exit $?