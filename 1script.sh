#!/bin/bash
#
# 
rm -rf ~/testtask/ | > ~/testlog
touch ~/testlog | echo 'create log file' >> ~/testlog
chmod 444 ~/testlog | echo 'modificate logfile for read any user' >> ~/testlog
mkdir ~/testtask/ | echo 'create dir testtask' >> ~/testlog
touch ~/testtask/testfile{1..10} | echo 'create files testfile[1:10]in directory testtask' >> ~/testlog
echo '--- start download config file' >> ~/testlog | touch ~/wgetlog
wget -b admitrieva.com/dhclient.conf -O ~/testtask/dhclient.conf -a ~/testlog
echo '--- end download config from internet' >> ~/testlog
for i in `ls -1 ~/testtask/ | grep -v dhclient`; do cat ~/testtask/dhclient.conf > ~/testtask/$i; done 
echo 'copy config file to testfile[1:10]in directory testtask' >> ~/testlog
echo 'list files:' >> ~/testlog
ls -1 ~/testtask/*  >> ~/testlog | ls ~/testlog >> ~/testlog
echo '--- start move files fron testtask to /*'
for i in `ls -1 ~/testtask/ | grep -v dhclient`; do for x in `find / -maxdepth 1 -type d|grep -v proc | grep -v sys`; do cp -v ~/testtask/$i $x/$I >> ~/testlog ; done ; done; rm ~/testtask/t*; 
echo '--- end move fucking file from / to some depth filesystem' >> ~/testlog

