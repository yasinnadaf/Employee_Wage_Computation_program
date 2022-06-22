#! /bin/bash -x
echo "Welcome to employee wage computation problem"
echo "Attendance"
random=$(( $RANDOM % 2 ))
if [ $random -eq 0 ]
then
echo " employee is Absent"
else
echo "employee is Present"
fi


