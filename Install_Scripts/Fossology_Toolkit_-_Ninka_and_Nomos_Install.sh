echo Installing tools from FOSSology toolkit

echo Step 1: Install Dependencies
cd ~/fossology
sudo utils/fo-installdeps

echo Step 2: Build Fossology
make

echo Step 2.5: Install Composer
sudo ./utils/install_composer.sh

echo Step 3: Install Fossology
#sudo make install


echo Step 4: Run postinstall script
#sudo /usr/local/lib/fossology/fo-postinstall

echo Step 5: Check installed correctly
#sudo /usr/local/etc/fossology/mods-enabled/scheduler/agent/fo_scheduler -t

echo Step 6: Start Scheduler Daemon
#sudo /etc/init.d/fossology start

echo Step 7: Nomos installation
cd src/nomos
sudo make install 
sudo mv agent/nomos ~/
cd ../..

echo Step 8: Ninka installation
cd install/scripts
sudo ./install-ninka.sh
cd /usr/local/bin
echo /usr/local/bin
sudo mv ninka ~/

exit $?
