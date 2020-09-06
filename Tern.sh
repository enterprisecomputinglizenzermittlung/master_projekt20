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
cd lib
echo -----------lib------------
ls
cd python3.6
echo -----------PY36------------
ls
cd site-packages
echo -----------SP------------
ls
sudo pip install wheel
cd ~/tern/ternenv
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py ~/tern/ternenv/lib/python3.6/site-packages/wheel
python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
sudo pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
