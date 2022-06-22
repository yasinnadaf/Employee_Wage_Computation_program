#! /bin/bash -x

Wage=()

NUM_OF_WORKING_DAYS=20
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4

daily_Wage=0
monthly_Wage=0

for i in `seq $NUM_OF_WORKING_DAYS`
do
	random=$(( $RANDOM % 3 ))


        case $random in
        
	1)
                echo "Present - FullDay"
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
        ;;
        
	2)
                echo "Present - HalfDay"
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
        ;;
        
	*)
                echo "Absent"
		daily_Wage=0
        ;;

        esac

	Wage[$i]=$daily_Wage
	
monthly_Wage=$(( $monthly_Wage + $daily_Wage ))

done

	Wage[$(( $i + 1))]=$monthly_Wage

echo ${!Wage[@]}

echo ${Wage[@]}

