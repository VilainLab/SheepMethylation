#!/bin/bash
##First the file name has to be pre-processed
##based on parts that would be before and after the read number
cd /data/Suro/RAM/reports
for kk in $(ls /data/Suro/RAM/reports| uniq);
do
echo ${kk}
q="$(echo ${kk}|cut -d'.' -f1)"
awk '$6=="CHH"' ${kk} > ${q}.CHH_report.txt
awk '$6=="CHG"' ${kk} > ${q}.CHG_report.txt
done;
echo "process ends!"
