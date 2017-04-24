#!/bin/bash
#
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
if [ "$#" -eq "4" ] ; then for i in "$@" ; do echo "$i" >> ~/anna/script.log ; done ; else echo 'You nead to provide 4 parameters' >> ~/anna/script.log ; fi
if [[ $1 == ftp://* || $1 == http://* || $1 == https://* ]] ; then echo $1 ; else echo 'First parameter should start with http://, ftp:// or https://' ; fi
