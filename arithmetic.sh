#!/bin/bash -x
read -p "Enter 1st input : " a
read -p "Enter 2nd input : " b
read -p "Enter 3rd input : " c
y=`awk 'BEGIN{print '$c' + ('$a'/'$b')}'`
echo " 3rd Expression output is : $y"
