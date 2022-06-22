#! /bin/bash -x

WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4
daily_Wage=0
random=$(( $RANDOM % 3 ))
        case $random in
        1)
                echo "Present - FullDay"
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
                echo "Daily Wage : $daily_Wage"
        ;;
        2)
                echo "Present - PartTime"
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
                echo "Daily Wage : $daily_Wage"
        ;;
        *)
                echo "Absent"
                echo "Daily Wage : 0"
        ;;
        esac

