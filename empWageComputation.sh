#!/bin/bash -x

echo "welcome to Employee Wage Computation"
IS_PRESENT=1
WAGE_PER_HOUR=20
Random=$((RANDOM%2))
if [ $IS_PRESENT -eq $Random ]
then
	echo "Employee is Present"
	fullDayHour=8
	DailyWage=$(($WAGE_PER_HOUR * $fullDayHour))
else
	echo "Employee is Absent"
	DailyWage=0
fi
