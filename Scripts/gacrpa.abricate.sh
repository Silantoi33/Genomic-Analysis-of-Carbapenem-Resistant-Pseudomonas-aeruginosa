#!/bin/bash
#Authors: Silantoi & Kevin
#Date: 27/11/2023
#Modified Date: 07/12/2023
#Script name: gacrpa.abricate.sh
#Usage: bash script name
#Decription:For loop bash script to screen for AMR, Virulence and plasmids determinants
#Tool: ABRICATE
#Database: Resfinder and CARD for AMR genes, VFDB - Virulence factors and Plasmidfinder - plasmids 

#do resfinder first

for a in *.fa
do
abricate --db resfinder --csv $a >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_resfinder.csv
done

for b in *.fsa_nt
do
abricate --db resfinder --csv $b >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_resfinder.csv
done

#do now card

for c in *.fa
do
abricate --db card --csv $c >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_card.csv
done

for d in *.fsa_nt
do
abricate --db card --csv $d >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_card.csv
done

#do virulence

for e in *.fa
do
abricate --db vfdb --csv $e >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_vfdb.csv
done

for f in *.fsa_nt
do
abricate --db vfdb --csv $f >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_vfdb.csv
done

# do plasmidfinder

for g in *.fa
do
abricate --db plasmidfinder --csv $g >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_plasmids.csv
done

for h in *.fsa_nt
do
abricate --db plasmidfinder --csv $h >> /home/sequser/Downloads/GACRPA-Project/gacrpa_results/gacrpa_plasmids.csv
done
