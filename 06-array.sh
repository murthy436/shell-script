#!/bin/bash

Names=("Swathi" "Yuvan" "Sushanth" "Honey" "Naga rathna" "Govindu" "Chandra" "Devi")


echo "First name: ${Names[0]}"
echo "Second name is: ${Names[1]}"
echo "list of all names is: ${Names[@]}"
echo "list of full names is: ${Names[*]}"

#To print selected index element
selected_index=3
echo "Selected Index element at index: $selected_index:"
echo "${Names[$selected_index]}"

#To print elements from particular index
echo "Elements from Particular index 2:"
echo "${Names[@]:2}"

#To check how many names in above list
echo "Number of names in Names variable:"
echo ${#Names[@]}

# To swap the names in list
echo "Before swapping the names this is orignal order:"
echo ${Names[@]}
temp=${Names[3]}
temp1=${Names[2]}
Names[3]=${Names[0]}
Names[2]=${Names[1]}
Names[0]=${temp}
Names[1]=${temp1}
echo "After swapping the names this is order:"
echo "${Names[@]}"

echo "First name in the list: ${Names[0]}"