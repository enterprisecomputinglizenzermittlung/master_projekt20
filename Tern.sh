echo ------2.7 DIST-------------- 
cd /usr/local/lib/python2.7/dist-packages/wheel
ls
echo ------MASTERPROJEKT-------------- 
cd ~/build/enterprisecomputinglizenzermittlung/master_projekt20
sudo cp setup.py /usr/local/lib/python2.7/dist-packages/wheel
ls
cd ~/tern
sudo python3 -m venv ternenv
echo ------------TERNENV--------------
cd ternenv
source bin/activate
#/home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py 
ls
sudo apt-get install -y python-setuptools
sudo pip install wheel
ls
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py lib/python3.6/site-packages/wheel
python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
sudo pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
