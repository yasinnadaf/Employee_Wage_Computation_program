#! /bin/bash -x

TotalWorkingHrs() {
while [[ $totalEmpHrs -ne $MAX_HRS_IN_MONTH && $totalWorkingDays -ne $NUM_OF_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        random=$(( $RANDOM % 3 ))


        case $random in
        1)
                #Present fullday
                empHrs=8
                ;;
        2)
                #Present halfday
                empHrs=4
                ;;
        *)
                #absent
                empHrs=0
                ;;
        esac

        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done
}

NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4
monthly_Wage=0

totalEmpHrs=0
totalWorkingDays=0

echo "Calculate work hours for one month"

TotalWorkingHrs

echo "Total working hours for a month $totalEmpHrs"

 
