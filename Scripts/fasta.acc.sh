#!/bin/bash
#Authors: Silantoi & Kevin
#Date: 27/11/2023
#Modified Date: 06/12/2023
#Script name:fasta.acc.sh
#Use: bash script name

#loops through each file
#links

for file in $(cat /home/sequser/Downloads/GACRPA-Project/fasta.acc.list.txt)
do
#Download fasta files 
ncbi-acc-download --format fasta $file
done




