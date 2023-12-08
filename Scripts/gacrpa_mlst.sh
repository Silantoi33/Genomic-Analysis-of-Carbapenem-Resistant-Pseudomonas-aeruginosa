#!/bin/bash
#Authors: Silantoi & Kevin
#Date: 27/11/2023
#Modified Date: 07/12/2023
#Script name:gacrpa_mlst.sh
#Usage: bash gacrpa_mlst.sh
#Description: For loop bash script to identify the multi locus sequence type (MLST)

# do mlst
for a in *.fa
do
mlst $a | cut -f 1,2,3 >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_mlst.tsv
done

for b in *.fsa_nt
do
mlst $b | cut -f 1,2,3 >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_mlst.tsv
done
