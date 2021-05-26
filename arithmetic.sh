#!/bin/bash -x
read -p "Enter 1st input : " a
read -p "Enter 2nd input : " b
read -p "Enter 3rd input : " c
x=$(($(($a*$b))+$c))
echo "a+b*c output is : $x"
