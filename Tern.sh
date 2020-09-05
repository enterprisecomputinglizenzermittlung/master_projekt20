echo ------Home/Travis-------------- 
cd /home/travis
ls
cd ~/tern
sudo python3 -m venv ternenv
cd ternenv
echo --lib/python36/sitepackages----
cd lib/python3.6/site-packages
ls
echo ---BEFORE WHEEL INSTALL---
pip install wheel
echo ---AFTER WHEEL INSTALL---
cd ..
cd ..
cd ..
source bin/activate
cd lib/python3.6/site-packages
ls
echo ---BEFORE WHEEL INSTALL---
pip install wheel
echo ---AFTER WHEEL INSTALL---
cd ..
cd ..
cd ..
#/home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py 
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py lib/python3.6/site-packages/wheel/setup.py
#lib/python3.6/site-packages/wheel/setup.py bdist_wheel
python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
