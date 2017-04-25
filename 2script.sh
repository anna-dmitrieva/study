#!/bin/bash
#
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
if [ "$#" -eq "4" ]
then 
if [[ $1 == ftp://* || $1 == http://* || $1 == https://* ]] 
then  wget -q --user=$2 --password="$3" -O ~/anna/prpage $1 
NUM=$?+1
sed "${NUM}q;d" errpage
else echo 'First parameter should start with http://, ftp:// or https://' ; fi  
for i in "$@" ; do echo "$i" >> ~/anna/script.log ; done 
else echo 'You nead to provide 4 parameters'
fi
