# master_projekt20
Repo zum Testen der Lizenzermittlungstools mit Travis CI

## Erklärung der jeweiligen Ordner & Files:
* ### Files
  * **.travis.yml**: Dieses File beschreibt den Aufbau der Travis CI Testumgebung. Dabei ist es notwendig, dass dieses File im Rootverzeichnis liegen bleibt, da Travis CI dies so vorgibt. Die Beschreibung dieses Files kann aus der Dokumentation entnommen werden.

* ### Ordner
  * **Test_Scripts**: In diesem Ordner werden die Test Scripte gespeichert. Dabei existiert ein Script welches ein .rpm-Paket erstellt und ihm die GPL 3.0 Lizenz hinzufügt. Dieses Script dient als Vorlage für alle folgenden Pakete. Außerdem sind Scripte zur Durchführung von Tests auf den jeweiligen Tools definiert. Diese werden ebenfalls in Travis CI ausgeführt

  * ** Install_Scripts**: In diesem Ordner sind alle wichtigen Install Scripte gespeichert. Diese Scripte werden in Travis CI ausgeführt. Die Reihenfolge der Scripts ist dabei im .travis.yml-File beschrieben. Für jedes Tool existiert ein eigenes Installationscript


##TODO: Test-Commandos rausnehmen

Commands for test execution:
./ninka File 
.
/nomos File
.
/extractcode ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb

./scancode -clip --json-pp - ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb-extract

sudo tern report -o output.txt -i debian:buster

cat output.txt

sudo tern report -x scancode -i debian:buster
