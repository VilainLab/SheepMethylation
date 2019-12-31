#!/bin/bash
##First the file name has to be pre-processed
##based on parts that would be before and after the read number
export PATH=/home/sbhattach2/FastQC/:/home/sbhattach2/fastqc/:/home/sbhattach2/miniconda3/bin:/home/sbhattach2/miniconda3/condabin:/home/sbhattach2/Bismark:/home/sbhattach2/TrimGalore-0.6.0:/home/sbhattach2/bowtie22/:$PATH
bismark_genome_preparation --path_to_aligner /home/sbhattach2/bowtie2/ --bowtie2 /data/Suro/Fasta/Sheep/ref_bowtie2/
for kk in $(ls /data/Suro/Methylation/RAM/output_aligned/fastqs| uniq)
do
bismark  --genome /data/Suro/Fasta/Sheep/ref_bowtie2/ /data/Suro/Methylation/RAM/output_aligned/fastqs/${kk}
done
echo "process ends!"
