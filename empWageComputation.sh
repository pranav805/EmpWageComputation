#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
EMPLOYEE_WORKING_PARTTIME=1
EMPLOYEE_WORKING_FULLTIME=2
WAGE_PER_HOUR=20
WORKING_DAYS_PER_MONTH=20
for (( day=1; day<=$WORKING_DAYS_PER_MONTH; day++ ))
do
	RandomCheck=$((RANDOM%3))
	case $RandomCheck in
		$EMPLOYEE_WORKING_PARTTIME)
		empHrs=4
		;;
		$EMPLOYEE_WORKING_FULLTIME)
		empHrs=8
		;;
		*)
		empHrs=0
		;;
	esac
EmployeeWage=$(($WAGE_PER_HOUR*$empHrs))
TotalSalery=$(($TotalSalery+$EmployeeWage))
done

