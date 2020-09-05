cd ~/tern
sudo python3 -m venv ternenv
cd ternenv
source bin/activate
cd lib
ls
#python lib/python3.5.2/site-packages/wheel/setup.py bdist_wheel
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
