cd ~/scancode 
./extractcode ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb
./scancode -clip --json-pp - ~/build/enterprisecomputinglizenzermittlung/master_projekt20/emacs-common-non-dfsg_26.1+1-1_all.deb-extract
cd ~/build/enterprisecomputinglizenzermittlung/master_projekt20/
ls
exit 0