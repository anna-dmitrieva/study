#!/bin/bash
#
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
if [ "$#" -eq "4" ]; then for i in "$@" ; do echo "$i" >> ~/anna/script.log ; done ; else echo 'You nead to provide 4 parameters' >> ~/anna/script.log ; fi
