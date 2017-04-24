#!/bin/bash
#
touch ~/anna/script.log
echo $(date -u)": Started" >> ~/anna/script.log
if $#=4; then echo "$@"; else echo 'You nead to provide 4 parameters'; fi
