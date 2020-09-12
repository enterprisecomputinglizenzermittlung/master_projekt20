echo Installing tools from FOSSology toolkit
cd ~/fossology

echo Step 1: Nomos installation
cd src/nomos
echo sudo make install 
mv agent/nomos ~/
cd ../..

echo Step 2: Ninka installation
cd install/scripts
sudo ./install-ninka.sh
cd /usr/local/bin
echo /usr/local/bin
ls
sudo ./ninka ~/fossology/LICENSE

exit $?
