#!/bin/bash -x

echo "welcome to Employee Wage Computation"
isPresent=1
Random=$((RANDOM%2))
if [ $isPresent -eq $Random ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
