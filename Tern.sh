cd ~/tern
sudo python3 -m venv ternenv
cd ternenv
source bin/activate
python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
