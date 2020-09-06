echo Step 1: Fulfilling prerequisites
sudo apt-get install attr
sudo apt-get install python3.6
sudo apt-get install python3-setuptools
sudo apt-get install python3-wheel
sudo apt-get install python3-pip

echo Step 2: Create Python3 Venv 
cd ~/tern
sudo python3 -m venv ternenv

echo Step 3: Activate Python3 Venv 
cd ternenv
sudo source bin/activate

echo Step 4: Install Tern
sudo python3 -m pip install tern

echo Step 5: Execute Testscan
sudo tern report -o output.txt -i debian:buster
cat output.txt

exit $?
