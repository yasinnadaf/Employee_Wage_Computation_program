#! /bin/bash -x

WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4
daily_Wage=0
random=$(( $RANDOM % 3 ))
        if [ $random -eq 1 ]
        then
                echo "Present - FullDay"
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
                echo "Daily Wage : $daily_Wage"
        elif [ $random -eq 2 ]
        then
                echo "Present - PartTime"
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
                echo "Daily Wage : $daily_Wage"
        else
                echo "Absent"
                echo "Daily Wage : 0"
        fi
