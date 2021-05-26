#!/bin/bash -x
declare -A dict
declare -a array
read -p "Enter 1st input : " a
read -p "Enter 2nd input : " b
read -p "Enter 3rd input : " c
w=`awk 'BEGIN{print '$a' + '$b' * '$c'}'`
x=`awk 'BEGIN{print '$a' * '$b' + '$c'}'`
y=`awk 'BEGIN{print '$c' + '$a' / '$b'}'`
z=`awk 'BEGIN{print '$a' % '$b' + '$c'}'`
echo " 1st Expression output is : $w"
echo " 2nd Expression output is : $x"
echo " 3rd Expression output is : $y"
echo " 4th Expression output is : $z"
i=0
dict[$i]=$w
i=$(($i+1))
dict[$i]=$x
i=$(($i+1))
dict[$i]=$y
i=$(($i+1))
dict[$i]=$z
echo "Values in dictionary is : ${dict[@]}"
for((i=0;i<=3;i++))
do
	array[$i]=${dict[$i]}
done
echo "Values in array is : ${array[@]}"
