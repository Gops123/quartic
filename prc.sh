#!/bin/bash
 
for file in *.log; do
 
grep "accounts Everything looks good" $file>$file.gr
cat $file.gr|awk -F, '{print $1}'|awk '{print $2}' | awk -F: '{print "A"$1*60+$2"A"}' >  $file.txt
 
for i in $(seq 1 1439); do
 
res=`grep A${i}A ${file}.txt|wc -l`
echo $i , $res >> permin_$file.csv
done
 
for i in $(seq 0 23); do
sum=0
for j in $(seq 0 59); do
((time = $i*60+$j))
res=`grep A${time}A ${file}.txt|wc -l`
((sum=$sum+$res))
done
echo $i , $sum>> perhour$file.csv
done
 
done
