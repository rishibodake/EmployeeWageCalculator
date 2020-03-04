#!/bin/bash -x
#Discription:calculate the wages of employee using use cases
#Author:Hrishikesh M Bodake
#Since:March 4 2020 /Wednesday

function attendence(){
	randomGenrator=$((RANDOM%2))
	if [[ $randomGenrator -eq 1 ]]
	then
		echo Employee is Present
	else
		echo Employee is Absent
	fi
}
attendence
