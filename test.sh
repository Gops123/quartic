#!/bin/bash

filename="out.log"
count1= 0
while read -r line
do
    readLine=$line
    ((count1++))
done < "$filename"

count= 0
count2= 0
count3= 0
count4= 0
count5= 0
count6= 0
count7= 0
#While loop to read line by line
while read -r line
do  
    readLine=$line
    if [[ $readLine = *Line* ]] ; then
        echo "$readLine"
        ((count++))
    elif [[ $readLine = *good ]] ; then
        echo "$readLine"
        ((count2++))
    elif [[ $readLine = *RandomError ]] ; then
        echo "$readLine"
        ((count3++))
    elif [[ $readLine = *ValueError ]] ; then
        echo "$readLine"
        ((count4++))
    elif [[ $readLine = *VariableError ]] ; then
        echo "$readLine"
        ((count5++))
    elif [[ $readLine = *RunTimeError ]] ; then
        echo "$readLine"
        ((count6++))
    elif [[ $readLine = *UnknownError ]] ; then
        echo "$readLine"
        ((count7++))
    fi


done < "$filename"

echo "Exception" $count

echo "good =" $count2
echo "RandomError =" $count3
echo "ValueError=" $count4
echo "VaribleError=" $count5
echo "RuntimeError=" $count6
echo "UnknowError=" $count7

echo "Total lines in files=" $count1

let per=$count*100/$count1 
let per1=$count2*100/$count1
let per2=$count3*100/$count1
let per3=$count4*100/$count1
let per4=$count5*100/$count1
let per5=$count6*100/$count1
let per6=$count7*100/$count1

echo "percential of error 'Something messed up. Exception raised.'= " $per
echo "percential of good=" $per1
echo "percential of RandomError=" $per2
echo "percential of ValueError'=" $per3
echo "percential of VariablError=" $per4
echo "percential of RuntimeError=" $per5
echo "percential of UnknownError=" $per6

