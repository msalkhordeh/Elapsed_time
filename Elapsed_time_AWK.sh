#!/bin/bash
Saat=`date -d@$1 -u +%H:%M:%S`
echo `echo $Saat | sed 's/:/ /g' | awk '{if ($1!='00') print $1" hr "$2" min "$3" sec"; else if ($2 !='00') print $2" min "$3" sec "; else print $3" sec "}'`

