cp -a /home/BENUTZER/. /media/sda9/Sicherungen 
cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py /lib/python3.6/site-packages/wheel
cd ~/tern
sudo python3 -m venv ternenv
cd ternenv
source bin/activate
python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
