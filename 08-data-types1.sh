#!/bin/bash

#Reading values from user

read -r -p "enter Num1: " Num1
read -r -p "enter Num2: " Num2

Sum=$(($Num1+$Num2))
echo "Total sum of Num1 and Num2: "${Sum}

Sub=$(($Num1-Num2))
echo "Subtraction of Num1 and Num2: "${Sub}

Mul=$(($Num1*Num2))
echo "Multiplication of Num1 and Num2: "${Mul}

Division=$(($Num1/$Num2))
echo "Division of Num1 and Num2: "${Division}