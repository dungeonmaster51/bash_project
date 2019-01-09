#!/usr/bin/env bash

function guess(){

	true_ans=$(ls-l |grep "^-"|wc -l)
	while true;
	do
		echo "Please enter your guess : "
		read number
		if [ $number -lt $true_ans ]
		then
			echo " Your guess is less than the true number. "
		elif [ $number -gt $true_ans ]
		then
			echo "Your guess is greater than the true number."
		else
			echo "Congratulations, you are right!"
		break;
		fi
	done
}
echo "Guess the files number in the current directory!"
guess
