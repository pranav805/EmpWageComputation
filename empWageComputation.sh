#!/bin/bash -x
echo "welcome to Employee Wage Computation"
EMPLOYEE_WORKING_PARTTIME=1
EMPLOYEE_WORKING_FULLTIME=2
WAGE_PER_HOUR=20
RandomCheck=$((RANDOM%3))
if [ $RandomCheck -eq $EMPLOYEE_WORKING_PARTTIME ]
then
	empHrs=4
elif [ $RandomCheck -eq $EMPLOYEE_WORKING_FULLTIME ]
then 

	empHrs=8
else
	empHrs=0
fi
EmpWage=$(($WAGE_PER_HOUR * $empHrs))
