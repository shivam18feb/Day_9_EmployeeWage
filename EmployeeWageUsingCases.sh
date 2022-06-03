WAGE_PER_HR=20
FULL_DAY_WORKING_HR=8
HALF_DAY_WORKING_HR=4
#MAX_WORKING_DAYS=20
#MAX_WORKING_HRS=100

dailyWage=0
total_woking_hrs=0
days=0


while [[ total_working_hrs -le 100 && days -le 20 ]]
do
attendance=$((RANDOM%3))
case $attendance in
	1)
		echo "Employee is present"
		#empHrs=$FULL_DAY_WORKING_HR
		dailyWage=$(( $FULL_DAY_WORKING_HR * $WAGE_PER_HR ))
		total_woking_hrs=$(( $total_woking_hrs + $FULL_DAY_WORKING_HR ))
		echo "Daily wage: $dailyWage"
		;;
	2)	echo "Employee is present"
		#empHrs=$HALF_DAY_WORKING_HR
                dailyWage=$(( $HALF_DAY_WORKING_HR * $WAGE_PER_HR ))
		total_woking_hrs=$(( $total_woking_hrs + $HALF_DAY_WORKING_HR ))
                echo "Daily wage: $dailyWage"
		;;
	0)
		echo "EMployee is absent"
		dailyWage=0
		echo "Daily wage: $dailyWage"
		;;
esac
days=$(($days+1))
done
echo "Total working hours: $total_woking_hrs"
