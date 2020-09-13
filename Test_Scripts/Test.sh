cd ..
sudo apt-get install build-essentials

mkdir -p ~/Hello_World
cp Package_Creation_Sources/* ~/

cd ~/Hello_World_Program
make

ls

cd ../Hello_World
mkdir DEBIAN
ls
touch DEBIAN/control
echo Package: Hello_World > DEBIAN/control
echo Version: 1.0 >> DEBIAN/control
echo Section: custom >> DEBIAN/control
echo Priority: optional >> DEBIAN/control
echo Architecture: all >> DEBIAN/control
echo Essential: no >> DEBIAN/control
echo Installed-Size: 1024 >> DEBIAN/control
echo Maintainer: FAU >> DEBIAN/control
echo Description: Print Hello World on the console >> DEBIAN/control
cat DEBIAN/control

mkdir /usr/bin
cd ..
echo copy program to bin
cp Hello_World_Program/app Hello_World/usr/bin

cp Hello_World_Program/app Hello_World/usr/bin

dpkg-deb --build Hello_World

RET=$?
ls

exit $RET
