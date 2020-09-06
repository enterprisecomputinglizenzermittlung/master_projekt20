echo Step 1: Fulfilling prerequisites
sudo apt-get install attr
sudo apt-get install python3.6
sudo apt-get install python3-setuptools
sudo apt-get install python3-wheel
sudo apt-get install python3-pip

echo Step 2: Create Python3 Venv 
cd ~/tern
sudo python3 -m venv scanenv

echo Step 3: Activate Python3 Venv for Tern+Scancode
cd scanenv
sudo source bin/activate

echo Step 4: Install Tern and Scancode Toolkit
sudo python3 -m pip install tern scancode-toolkit

exit $?
