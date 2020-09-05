apt-get install python3-venv
cd ~/tern
python3 -m venv Py3
cd Py3
source bin/activate
pip install tern
tern report -o output.txt -i debian:buster
ls
exit 0
