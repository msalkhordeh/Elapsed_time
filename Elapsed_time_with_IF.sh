#!/bin/bash
Saat=`date -d@$1 -u +%H:%M:%S`
h=` echo $Saat |cut -c 1-2`
m=`echo $Saat | cut -c 4-5`
s=`echo $Saat | cut -c 7-8`
if [[ $h -ne '00' ]]
then
	printf "Time : %02d hr %02d min %02d sec \n" $h $m $s
elif [[ $m -ne '00' ]]
then
	printf "Time : %02d min %2d sec \n" $m $s
else
	printf "Time : %02d sec \n" $s
fi

