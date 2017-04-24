#!/bin/bash
#
touch ~/anna/testlog | echo '--- create log file and dir /root/anna' >> ~/anna/testlog
chmod 444 ~/anna/testlog | echo '--- modificate logfile for read any user' >> ~/anna/testlog
mkdir ~/anna/testtask/ | echo '--- create dir testtask' >> ~/anna/testlog
for i in 1 2 3 4 5 6 7 8 9 10 ; do touch ~/anna/testtask/testfile$i; done
echo 'create files testfile[1:10]in directory testtask' >> ~/anna/testlog
echo '--- start download config file' >> ~/anna/testlog
wget admitrieva.com/dhclient.conf -O ~/anna/dhclient.conf -a ~/anna/testlog
echo '--- end download config from internet' >> ~/anna/testlog
for i in `ls -1 ~/anna/testtask/ | grep -v dhclient`; do cat ~/anna/dhclient.conf > ~/anna/testtask/$i; done
echo '--- copy config file to testfile[1:10]in directory testtask' >> ~/anna/testlog
echo '--- list files:' >> ~/anna/testlog
ls -1h ~/anna/testtask/*  >> ~/anna/testlog | ls ~/anna/testlog >> ~/anna/testlog
echo '--- move files in different dir' >> ~/anna/testlog
cd ~/anna/; for f in `ls -1 ~/anna/testtask/ | grep -v testfile10` ; do mkdir dir_$f;
mv -v ~/anna/testtask/$f dir_$f/ >> ~/anna/testlog ; done
mv -v ~/anna/testtask/testfile10 ~/anna >> ~/anna/testlog
echo '--- find all files with name testfile*' >> ~/anna/testlog
find ~/anna -type f -name 'testfile*' >> ~/anna/testlog
echo '--- show size and name files' >> ~/anna/testlog
find ~/anna -type f -name 'testfile*' | xargs ls -lh | awk '{print $5 " " $9 }' >> ~/anna/testlog
echo '--- mv files to ~/anna/testtask/' >> ~/anna/testlog
find ~/anna -type f -name 'testfile*' | xargs mv -v -t ~/anna/testtask/ >> ~/anna/testlog ;
echo '--- concatination all file in one big file' >> ~/anna/testlog
find ~/anna -type f -name 'testfile*' | xargs cat > ~/anna/testtask/onebigfile
echo '--- delete all unused file' >> ~/anna/testlog
find ~/anna -type f -name 'testfile*' | xargs rm
echo '--- create dir testtaskprofit' >> ~/anna/testlog
mkdir -v ~/anna/testtaskprofit >> ~/anna/testlog
echo '--- copy file in testtaskprofit' >> ~/anna/testlog
cp -v ~/anna/testtask/onebigfile ~/anna/testtaskprofit/ >> ~/anna/testlog
echo '--- force delete dir ~/anna/testtask with contains file' >> ~/anna/testlog
rm -rfv ~/anna/testtask >> ~/anna/testlog
rm -rfv ~/anna/dir_testfile* >> ~/anna/testlog
echo '--- end work script. you awesome!' >> ~/anna/testlog
