#!/bin/bash

prc="ashok anil raghavendra kirtan bash"
for i in $prc
do
	ps=$(ps -eaf|grep $i |wc -l)
	if  [ $ps -le 2 ]
	then
		echo $i is running
	else
		echo $i is not running
	fi
done
