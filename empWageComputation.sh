#!/bin/bash -x
echo "welcome to Employee Wage Computation"
EMPLOYEE_WORKING_PARTTIME=1
EMPLOYEE_WORKING_FULLTIME=2
WAGE_PER_HOUR=20
RandomCheck=$((RANDOM%3))
case $RandomCheck in
	$EMPLOYEE_WORKING_PARTTIME)
		empHrs=4
		;;
	$EMPLOYEE_WORKING_FULLTIME)
		empHrs=8
		;;
	*)
		empHrs=0;;
esac
EmpWage=$(($WAGE_PER_HOUR * $empHrs))

