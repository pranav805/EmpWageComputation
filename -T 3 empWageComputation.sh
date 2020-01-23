#!/bin/bash -x

echo "welcome to Employee Wage Computation"
EMP_WORKING_PARTIME=1
EMP_WORKING_FULLTIME=2
WAGE_PER_HOUR=20
RandomCheck=$((RANDOM%3))
if [ $RandomCheck -eq $EMP_WORKING_PARTIME ]
then
	empHrs=4
	fullDayHour=8
	DailyWage=$(($WAGE_PER_HOUR * $fullDayHour))
else
	echo "Employee is Absent"
	DailyWage=0
fi
