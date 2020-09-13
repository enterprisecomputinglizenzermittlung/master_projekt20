# master_projekt20
Repo zum Testen der Lizenzermittlungstools mit Travis CI


Commands for test execution:
# Ninka Test 
./ninka File 
.
# Nomos Test
/nomos File
.
# Extrahieren des "emacs-common-non-dfsg_26.1+1-1_all.deb" Debian-Packages
/extractcode ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb

# ScanCode Analyse des extrahierten Debian-Packages
./scancode -clip --json-pp - ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb-extract

# Tern Analyse des Images: "debian:buster" => Output in output.txt
sudo tern report -o output.txt -i debian:buster

# Öffnen des output.txt
cat output.txt

# Tern Analyse des Images: "debian:buster" => Output in der Kommandozeile
sudo tern report -x scancode -i debian:buster
