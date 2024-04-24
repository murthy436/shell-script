#!/bin/bash

#Reading values from user

read -r -p "enter Num1: " Num1
read -r -p "enter Num2: " Num2

Sum=$(($Num1+$Num2))
echo "Total sum of Num1 and Num2: "${Sum}