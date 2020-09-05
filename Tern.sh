cd ~/tern
sudo python3 -m venv ternenv
cd ternenv
source bin/activate
#/home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py lib/python3.6/site-packages/wheel/setup.py
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py /home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py
#lib/python3.6/site-packages/wheel/setup.py bdist_wheel
python /home/travis/virtualenv/python3.6.10/lib/python3.6/site-packages/wheel/setup.py bdist_wheel
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
