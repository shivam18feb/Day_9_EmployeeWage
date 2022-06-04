WAGE_PER_HR=20
FULL_DAY_WORKING_HR=8
HALF_DAY_WORKING_HR=4
#MAX_WORKING_DAYS=20
#MAX_WORKING_HRS=100

dailyWage=0
total_woking_hrs=0
days=0

getHours() {
	dailyHrs=$1
	case $dailyHrs in
		0)
			dailyHrs=0
			;;
		1)
			dailyHrs=$HALF_DAY_WORKING_HR
			;;
		2)
			dailyHrs=$FULL_DAY_WORKING_HR
			;;
	esac
	echo "$dailyHrs"
}

while [[ total_working_hrs -le 100 && days -le 20 ]]
do
	attendance=$((RANDOM%3))
	hrs=$(getHours $attendance)
	dailyWage=$(( $hrs * $WAGE_PER_HR ))
	total_woking_hrs=$(($total_woking_hrs+$hrs))

days=$(($days+1))
done
echo "Total working hours: $total_woking_hrs"
echo "Days : $days"
