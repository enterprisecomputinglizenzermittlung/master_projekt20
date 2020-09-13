echo Installing prerequisites for Tern installations
sudo apt-get install python3-venv
sudo apt-get install python-setuptools
sudo apt-get install attr
sudo apt-get install python3.6
sudo apt-get install python3-setuptools
sudo apt-get install python3-wheel
sudo apt-get install python3-pip#

ls

echo Calling Tern_Standalone installation script...
sudo bash ./Tern_Standalone_Install.sh

echo Calling Tern_With_ScanCode_Extension installation script...
sudo bash ./Tern_with_Scancode_Install.sh

