echo ------Home/Travis-------------- 
cd /home/travis
ls
cd ~/tern
sudo python3 -m venv ternenv
cd ternenv
source bin/activate
echo --lib/python36/sitepackages----
cd lib/python3.6/site-packages
ls
sudo pip install wheel
echo ----------------------------------
ls
cd ..
cd ..
cd ..
#/home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py 
#sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py lib/python3.6/site-packages/wheel/setup.py
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py /usr/local/lib/python2.7/dist-packages/wheel/setup.py
#lib/python3.6/site-packages/wheel/setup.py bdist_wheel
#python lib/python3.6/site-packages/wheel/setup.py bdist_wheel
python /usr/local/lib/python2.7/dist-packages/setup.py bdist_wheel
sudo pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
