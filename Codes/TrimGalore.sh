#!/bin/bash
##First the file name has to be pre-processed
##based on parts that would be before and after the read number
export PATH=/home/sbhattach2/FastQC/:/home/sbhattach2/fastqc/:/home/sbhattach2/miniconda3/bin:/home/sbhattach2/miniconda3/condabin:/home/sbhattach2/Bismark:/home/sbhattach2/TrimGalore-0.6.0:/home/sbhattach2/bowtie/:$PATH
for k in $(ls /data/Suro/Methylation/RAM/fastq/| uniq)
do
trim_galore --fastqc --length 20 -o /data/Suro/Methylation/RAM/output_aligned/ -q 20 --rrbs --non_directional /data/Suro/Methylation/RAM/fastq/${k}
done
echo "process ends!"
