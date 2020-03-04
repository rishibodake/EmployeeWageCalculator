#!/bin/bash -x
#Discription:calculate the wages of employee using use cases
#Author:Hrishikesh M Bodake
#Since:March 4 2020 /Wednesday
#variables
declare -A wages
isPresent=1
ispartTime=1
wagePerHour=20
workHours=0
fullTimeHour=8
partTimeHour=4
daysOfMonth=20
totalHourWorked=0
monthlySalary=0
day=1

function attendence(){
	randomGenrator=$((RANDOM%2))
	if [[ $randomGenrator -eq $isPresent ]]
	then
		echo Employee is Present
		checkPartTime
		echo
	else
		echo Employee is Absent
		storeInDict 0
		echo
	fi
}
function dailyWage(){

	dailySalary=$(($wagePerHour*$workHours))
#	wages[$day]=$dailySalary
	storeInDict $dailySalary
	echo todays salary is: $dailySalary
	monthlyWage
#	storeIntoDictionary
}
function monthlyWage(){
   monthlySalary=$(($monthlySalary+$dailySalary))
      echo Monthly Salary: $monthlySalary
		echo =======================================
}
function checkPartTime(){
	caseChecker=$((RANDOM%2))
	case $caseChecker in
		0)
			echo Employee is PartTime
			getWorkHours $partTimeHour
			dailyWage
			;;
		1)
			echo Employee is FullTime
			getWorkHours $fullTimeHour
			dailyWage
			;;
	esac
}
function wagesForMonth(){
	while [[ $day -le $daysOfMonth && $totalHourWorked -le 100 ]]
	do
		echo ============== Day $day ===================
		attendence
		((day++))
	done
}
function getWorkHours(){
	workHours=$1
   totalHourWorked=$(($totalHourWorked+$workHours))
	echo Total Hours Worked Till Today: $totalHourWorked
}
function storeInDict()
{
	wages[$day]=$1
}
wagesForMonth
echo ${!wages[@]}
echo ${wages[@]}

