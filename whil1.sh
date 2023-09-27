#!/bin/bash

n=8
while [ $n -le 18 ]
do
cpu=$(top|head -$n|tail -1|awk '{print $(NF-4)}'|sed 's/.[0-9]//g' )
	if [ $cpu -gt 90 ]
	then
		echo is blast
	else
		echo it is normal
	fi

	n=$(expr $n + 1 )
done


