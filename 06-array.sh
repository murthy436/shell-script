#!/bin/bash

Names=("Swathi" "Yuvan" "Sushanth")


echo "First name: ${Names[0]}"
echo "Second name is: ${Names[1]}"
echo "list of all names is: ${Names[@]}"
echo "list of full names is: ${Names[*]}"

selected_index=3
echo "Selected Index element at index: $selected_index:"
echo "${Names[$selected_index]}"