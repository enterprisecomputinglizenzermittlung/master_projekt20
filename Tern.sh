echo ------Home/Travis/virtualenv---- 
cd /home/travis/virtualenv
ls
echo ------------~/tern-------------
cd ~/tern
ls
sudo python3 -m venv ternenv
echo -----------ternenv-------------
cd ternenv
ls
echo -----------lib->python36-------------
cd lib/python3.6
ls
cd ..
cd ..
source bin/activate
#/home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py 
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py lib/python3.6/site-packages/wheel/setup.py
#lib/python3.6/site-packages/wheel/setup.py bdist_wheel
python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
