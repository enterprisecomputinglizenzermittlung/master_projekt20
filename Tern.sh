echo Fulfilling prerequisites
sudo apt-get install attr
sudo apt-get install python3.6
sudo apt-get install python3-pip

echo Create Python3 Venv 
cd ~/tern
sudo python3 -m venv ternenv

echo Activate Python3 Venv 
cd ternenv
source bin/activate

echo Copy setup.py into Tern Venv directory
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py ~/tern/ternenv/lib/python3.6/site-packages/wheel/setup.py
cd ~/tern/ternenv/
ls
cd lib
ls
cd python3.6
ls
cd site-packages
ls
cd wheel
ls
cd ~/tern/ternenv

echo Install Tern
pip install tern

exit 0
