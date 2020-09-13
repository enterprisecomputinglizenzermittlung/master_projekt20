cd ..
sudo apt-get install build-essential

ls
mkdir -p ~/Hello_World

echo cp Package_Creation_Sources/* ~/
cp -r Package_Creation_Sources/* ~/

echo Make Hello_World_Program
echo cd ~/Hello_World_Program
cd ~/Hello_World_Program
make
ls

echo create DEBIAN Dir
cd ../Hello_World
mkdir DEBIAN
ls

echo create control file
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

mkdir usr/bin
ls
cd ..

echo copy program to bin
cp Hello_World_Program/app Hello_World/usr/bin

cp Hello_World_Program/app Hello_World/usr/bin

dpkg-deb --build Hello_World

RET=$?
ls

exit $RET
