TERN_SCANCODE_DIR=~/tern/scanenv

echo $0

# No Container image has been created for this project yet. Only existing images from other projects could be scanned
# Executing test scan for debian_buster
sudo tern report -x scancode -i debian:buster

exit $?