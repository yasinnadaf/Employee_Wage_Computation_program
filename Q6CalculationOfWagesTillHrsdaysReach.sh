#! /bin/bash -x

NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4

monthly_Wage=0
totalEmpHrs=0
totalWorkingDays=0

echo "Calculating monthly wages with condition days!>20 or hrs!>100"

while [[ $totalEmpHrs -ne $MAX_HRS_IN_MONTH && $totalWorkingDays -ne $NUM_OF_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        
	random=$(( $RANDOM % 3 ))
	

	case $random in


        1)
                echo "Present fullday"
                empHrs=$FULL_DAY_HRS
                ;;

        2)
                echo "Present halfday"
                empHrs=$PART_TIME_HRS
                ;;
        
	*)
                echo "Employee is absent"
                empHrs=0
                ;;
        
	esac

        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

echo $totalEmpHrs

monthly_Wage=$(( $totalEmpHrs * $WAGE_PER_HR ))

echo "Monthly Wage : $monthly_Wage"



