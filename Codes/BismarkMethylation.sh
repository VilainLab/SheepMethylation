#!/bin/bash
##First the file name has to be pre-processed
##based on parts that would be before and after the read number
export PATH=/home/sbhattach2/FastQC/:/home/sbhattach2/fastqc/:/home/sbhattach2/miniconda3/bin:/home/sbhattach2/miniconda3/condabin:/home/sbhattach2/Bismark:/home/sbhattach2/TrimGalore-0.6.0:/home/sbhattach2/bowtie22/:$PATH
for kk in $(ls /data/Suro/RAM/bam/| uniq);
do
echo ${kk}
bismark_methylation_extractor -s --scaffolds --multicore 2 --cytosine_report --CX_context --genome_folder /data/Suro/Fasta/Sheep/ref_bowtie2/ -o /data/Suro/RAM/ /data/Suro/RAM/bam/${kk}
done;
echo "process ends!"
