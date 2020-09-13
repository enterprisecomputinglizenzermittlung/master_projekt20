echo Installing Tern

echo Step 1: Create Python3 Venv 
cd ~/tern
sudo python3 -m venv ternenv

echo Step 2: Activate Python3 Venv 
cd ternenv
sudo bash bin/activate

echo Step 3: Install Tern
sudo python3 -m pip install tern

exit $?
