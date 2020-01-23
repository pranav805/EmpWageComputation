#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#Constants
EMPLOYEE_WORKING_PARTTIME=1
EMPLOYEE_WORKING_FULLTIME=2
WAGE_PER_HOUR=20
WORKING_DAYS_PER_MONTH=20
MAX_WORKING_HOURS_OF_EMPLOYEE=100

#Variables
totalEmployeeHrs=0
totalEmployeeDays=0

function getWorkHours()
{
	case $1 in
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
echo $empHrs
}

function dailyWage()
{
	local empHrs=$1
	wage=$(($empHrs*$WAGE_PER_HOUR))
	echo $wage
}
while [[ $totalEmployeeHrs -lt $MAX_WORKING_HOURS_OF_EMPLOYEE &&  $totalEmployeeDays -lt $WORKING_DAYS_PER_MONTH ]]
do
	((totalEmployeeDays++))
	empHrs="$( getWorkHours $((RANDOM%3)) )"
	totalEmployeeHrs=$(($totalEmployeeHrs + $empHrs))
	empDailyWage[$totalEmployeeDays]="$( dailyWage $empHrs )"
done
TotalSalery="$( dailyWage $totalEmployeeHrs )"
echo "Daily Wage " ${empDailyWage[@]}

