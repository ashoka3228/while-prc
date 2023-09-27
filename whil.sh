#!/bin/bash

sum=0
num=$1

while [ $num -ge 1 ]
do
	sum=$(expr $num + $sum )
	num=$(expr $num - 1 )
	echo $sum
done
