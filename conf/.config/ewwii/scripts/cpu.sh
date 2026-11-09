#!/bin/sh
read -r cpu u1 n1 s1 i1 w1 q1 sq1 st1 _ < /proc/stat
sleep 1
read -r cpu u2 n2 s2 i2 w2 q2 sq2 st2 _ < /proc/stat

total1=$((u1+n1+s1+i1+w1+q1+sq1+st1))
total2=$((u2+n2+s2+i2+w2+q2+sq2+st2))
idle=$(( (i2+w2) - (i1+w1) ))
total=$((total2 - total1))

printf " %d%%\n" $(( (total - idle) * 100 / total ))