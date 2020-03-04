#!/bin/bash -x
#Discription:calculate the wages of employee using use cases
#Author:Hrishikesh M Bodake
#Since:March 4 2020 /Wednesday
isPresent=1
ispartTime=1
wagePerHour=20
workHours=0
fullTimeHour=8
partTimeHour=4

function attendence(){
	randomGenrator=$((RANDOM%2))
	if [[ $randomGenrator -eq $isPresent ]]
	then
		echo Employee is Present
		checkPartTime
	else
		echo Employee is Absent
	fi
}
function dailyWage(){
	dailySalary=$(($wagePerHour*$workHours))
	echo $dailySalary
}
function checkPartTime(){
	caseChecker=$((RANDOM%2))
	case $caseChecker in
		0)
			echo Employee is PartTime
			workHours=$partTimeHour
			dailyWage
			;;
		1)
			echo Employee is FullTime
			workHours=$fullTimeHour
			dailyWage
			;;
	esac
}
attendence
