#!/bin/bash
#
# 
rm -rf ~/testtask/
> ~/testlog
touch ~/testlog | echo 'create log file' >> ~/testlog
chmod 444 ~/testlog | echo 'modificate logfile for read any user' >> ~/testlog
mkdir ~/testtask/ | echo 'create dir testtask' >> ~/testlog
touch ~/testtask/testfile{1..10} | echo 'create files testfile[1:10]in directory testtask' >> ~/testlog
wget admitrieva.com/dhclient.conf -O ~/testtask/dhclient.conf | echo 'download config from internet' >> ~/testlog
for i in `ls -1 ~/testtask/ | grep -v dhclient`; do cat ~/testtask/dhclient.conf > ~/testtask/$i; done  | echo 'copy config file to testfile[1:10]in directory testtask' >> ~/testlog
echo 'list files:' >> ~/testlog
ls -1 ~/testtask/*  >> ~/testlog | ls ~/testlog >> ~/testlog
echo 'move fucking file from / to some depth filesystem' >> ~/testlog


