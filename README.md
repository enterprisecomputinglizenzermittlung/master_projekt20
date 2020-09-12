# master_projekt20
Repo zum Testen der Lizenzermittlungstools mit Travis CI


Commads for test execution:
./ninka File
.
/nomos File
.
/extractcode ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb

./scancode -clip --json-pp - ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb-extract

sudo tern report -o output.txt -i debian:buster

cat output.txt

sudo tern report -x scancode -i debian:buster