#!/bin/bash
#NO1=1
#NO2=2

#SUM=$(($NO1+$NO2))

#echo "Total of $NO1 and $NO2 is: " $SUM
Num1=$1
Num2=$2
Num3=$3
Num4=$4

Sum=$(($Num1)+($Num2))
Sub=$(($Num3)-($Num4))

echo "Total of Num1 and Num2 is: $Sum"
echo "Sub of Num3 and Num4 is: $Sub"

