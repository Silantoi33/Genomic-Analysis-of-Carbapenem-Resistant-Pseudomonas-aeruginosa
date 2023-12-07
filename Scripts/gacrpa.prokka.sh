#!/bin/bash
#Authors: Silantoi & Kevin
#Date: 27/11/2023
#Modified Date: 07/12/2023
#Script name: gacrpa.prokka.sh
#Usage: bash gacrpa.prokka.sh
#Description: Annotation of gemones using PROKKA: rapid prokaryotic genome annotation tool

#loops through each file
#use prokka to do annotation

for file in *.fa
do 
tag=${file%.fa}
prokka --cpus 16 --prefix "$tag" --locustag "$tag" --outdir "$tag"_prokka "$file"
done


for file in *.fsa_nt
do
tag=${file%.fsa_nt}
prokka --cpus 16 --prefix "$tag" --locustag "$tag" --outdir "$tag"_prokka "$file"
done

#move output to another directory

mv *_prokka ./gacrpa_results/prokka
