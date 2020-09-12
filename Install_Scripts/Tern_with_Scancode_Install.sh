echo Installing Tern with ScanCode Extension

echo Step 1: Create Python3 Venv 
cd ~/tern
sudo python3 -m venv scanenv

echo Step 2: Activate Python3 Venv for Tern+Scancode
cd scanenv
sudo source bin/activate

echo Step 3: Install Tern and Scancode Toolkit
sudo python3 -m pip install tern scancode-toolkit

exit $?
