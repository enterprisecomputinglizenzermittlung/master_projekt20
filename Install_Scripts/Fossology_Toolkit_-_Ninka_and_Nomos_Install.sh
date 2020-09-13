echo Installing tools from FOSSology toolkit
cd ~/fossology

echo Step 1: Nomos installation
cd src/nomos
echo sudo make install 
sudo mv agent/nomos ~/
cd ../..

echo Step 2: Ninka installation
cd install/scripts
sudo ./install-ninka.sh
cd /usr/local/bin
echo /usr/local/bin
sudo mv ninka ~/

cd ~
ls

exit $?
