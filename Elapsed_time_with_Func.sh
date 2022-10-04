#!/bin/bash
convert (){
	((h=$1/3600))
	((m=($1%3600)/60))
	((s=$1%60))
	printf "Time:%02d hr %02d min %02d sec\n" $h $m $s
}
echo $(convert $1)
