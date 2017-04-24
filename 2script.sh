#!/bin/bash
#
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
if [ "$#" -eq "4" ]; then echo -e "$1 /n $2 /n $3 /n $4"; else echo 'You nead to provide 4 parameters'; fi
