echo Installing tools from FOSSology toolkit

echo Step 1: Install Dependencies
cd ~/fossology
sudo utils/fo-installdeps

echo Step 2: Build Fossology
make

echo Step 2.5: Install Composer
sudo ./utils/install_composer.sh

echo Step 3: Install Fossology
sudo make install


echo Step 4: Run postinstall script
sudo /usr/local/lib/fossology/fo-postinstall

echo Step 5: Nomos Installation
cd src/nomos
sudo make install 
sudo mv agent/nomos ~/
cd ../..

echo Step 6: Ninka installation
cd install/scripts
sudo ./install-ninka.sh
cd /usr/local/bin
echo /usr/local/bin
sudo mv ninka ~/

exit $?
