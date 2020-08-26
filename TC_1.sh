cd ~/scancode 
./extractcode ../emacs-common-non-dfsg_26.1+1-1_all.deb
./scancode -clip --json-pp - samples
exit 0
