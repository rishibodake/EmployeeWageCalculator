#!/bin/bash -x
#Discription:calculate the wages of employee using use cases
#Author:Hrishikesh M Bodake
#Since:March 4 2020 /Wednesday
isPresent=1
wagePerHour=20
fullTimeHour=8

function attendence(){
	randomGenrator=$((RANDOM%2))
	if [[ $randomGenrator -eq $isPresent ]]
	then
		echo Employee is Present
		dailywage #if present then calculate wages
	else
		echo Employee is Absent
	fi
}
function dailyWage(){
	dailySalary=$(($wagePerHour*$fullTimeHour))
	echo $dailySalary
}
dailyWage
