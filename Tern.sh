echo Create Python3 Venv 
cd ~/tern
sudo python3 -m venv ternenv

echo Copy setup.py into Tern Venv directory
sudo cp ~/build/enterprisecomputinglizenzermittlung/master_projekt20/setup.py ~/tern/ternenv/lib/python3.6/site-packages/wheel/setup.py
cd ~/tern/ternenv/lib/python3.6/site-packages/wheel
ls
cd ~/tern

echo Activate Python3 Venv 
cd ternenv
source bin/activate

echo Install Tern
pip install tern

exit 0
