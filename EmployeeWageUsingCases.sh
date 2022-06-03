WAGE_PER_HR=20
FULL_DAY_WORKING_HR=8
HALF_DAY_WORKING_HR=4

dailyWage=0

attendance=$((RANDOM%3))
case $attendance in
	1)
		echo "Employee is present"
		empHrs=8
		dailyWage=$(($FULL_DAY_WORKING_HR*$WAGE_PER_HR))
		echo "Daily wage: $dailyWage"
		;;
	2)
		echo "Employee is present"
                empHrs=4
                dailyWage=$(($HALF_DAY_WORKING_HR*$WAGE_PER_HR))
                echo "Daily wage: $dailyWage"
		;;
	0)
		echo "EMployee is absent"
		dailyWage=0
		echo "Daily wage: $dailyWage"
esac
