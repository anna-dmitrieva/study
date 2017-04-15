#!/bin/bash
#
# 
rm -rf ~/testtask/
> ~/testlog
touch ~/testlog | echo 'create log file' >> ~/testlog
mkdir ~/testtask/ | echo 'create dir testtask' >> ~/testlog
touch ~/testtask/testfile{1..10} | echo 'create files testfile[1:10]in directory testtask' >> ~/testlog
wget admitrieva.com/dhclient.conf | echo 'download config from internet' >> ~/testlog
cat dhclient.conf >  ~/testtask/testfile{1..10} | echo 'copy config file to testfile[1:10]' >> ~/testlog


