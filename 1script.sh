#!/bin/bash
#
# 
mkdir ~/anna
touch ~/anna/testlog | echo 'create log file' >> ~/anna/testlog
chmod 444 ~/anna/testlog | echo 'modificate logfile for read any user' >> ~/anna/testlog
mkdir ~/anna/testtask/ | echo 'create dir testtask' >> ~/anna/testlog
for i in 1 2 3 4 5 6 7 8 9 10 ; do touch ~/anna/testtask/testfile$i; done
echo 'create files testfile[1:10]in directory testtask' >> ~/anna/testlog
echo '--- start download config file' >> ~/anna/testlog
wget admitrieva.com/dhclient.conf -O ~/anna/testtask/dhclient.conf -a ~/anna/testlog
echo '--- end download config from internet' >> ~/anna/testlog
for i in `ls -1 ~/anna/testtask/ | grep -v dhclient`; do cat ~/anna/testtask/dhclient.conf > ~/anna/testtask/$i; done 
echo 'copy config file to testfile[1:10]in directory testtask' >> ~/anna/testlog
echo 'list files:' >> ~/anna/testlog
ls -1h ~/anna/testtask/*  >> ~/anna/testlog | ls ~/anna/testlog >> ~/anna/testlog
for i in 'ls -1 ~/anna/testtask/ | egrep -v 'dhclient|testfile10' ; do 
