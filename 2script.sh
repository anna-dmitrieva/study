#!/bin/bash
#
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
if [ "$#" -eq "4" ]
then 
if [[ $1 == ftp://* || $1 == http://* || $1 == https://* ]] 
then  wget -q --user=$2 --password="$3" -O ~/anna/prpage $1 
for err in "$?" ; do if [ "$?" -eq "0" ] ; then echo 'No problems occurred.' ; else if [ "$?" -eq "1" ] ; then echo 'Generic error code.' ; else if [ "$?" -eq "2" ] ; then echo 'Parse error—for instance, when parsing command-line options, the ‘.wgetrc’ or ‘.netrc’...' ; else if [ "$?" -eq "3" ] ; then echo 'File I/O error.' ; else if [ "$?" -eq "4" ] ; then echo 'Network failure.' ; else if [ "$?" -eq "5" ] ; then echo 'SSL verification failure.' ; else if [ "$?" -eq "6" ] ; then echo 'Username/password authentication failure.' ; else if [ "$?" -eq "7" ] ; then echo 'Protocol errors.' ; else if [ "$?" -eq "8" ] ; then echo 'Server issued an error response.' ; else echo 'Unknown error' ; fi ; fi ; fi ; fi ; fi ; fi ; fi ; fi ; fi ; done
else echo 'First parameter should start with http://, ftp:// or https://' ; fi  
for i in "$@" ; do echo "$i" >> ~/anna/script.log ; done 
else echo 'You nead to provide 4 parameters'
fi
