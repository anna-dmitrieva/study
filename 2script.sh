#!/bin/bash
#
mkdir ~/anna
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
n=$@
if n==4; then echo "$n"; else echo 'You nead to provide 4 parameters'; fi
