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
echo "Elements from Particular index:"
