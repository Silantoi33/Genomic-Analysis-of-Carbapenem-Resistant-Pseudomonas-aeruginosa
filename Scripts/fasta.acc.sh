#!/bin/bash
#Authors: Silantoi & Kevin
#Date: 27/11/2023
#Modified Date: 07/12/2023
#Script name:fasta.acc.sh
#Use: bash fasta.acc.sh

#loops through each file
#links

for file in $(cat /home/sequser/Downloads/GACRPA-Project/fasta.acc.list.txt)
do
#Download fasta files 
ncbi-acc-download --format fasta $file
done

#Download fasta links using the links

for a in $(cat /home/sequser/Downloads/GACRPA-Project/links.txt)
do
wget $a

#gunzip .gz files

gunzip *.gz
done
