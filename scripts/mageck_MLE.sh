## Run MAGECK RRA and MLE test for all samples comparing TOP to BOTTOM expression

## Define directories
guides_dir="../references"
guides="multimodal_CRISPR_CAD.sgRNA_seqs.txt"

count_dir="../mageck_counts"

output_dir="mageck_MLE"

phenotypes=("SELE" "ICAM" "VCAM" "Ca2+" "NO" "ROS")
cas_type=("CAS9" "CRISPRi" "CRISPRa")

for phenotype in ${phenotypes[@]}; do
    for cas in ${cas_type[@]}; do
    mageck mle -k $count_dir/$phenotype"."$cas".count_table.tsv" -d $count_dir/$phenotype"."$cas".design_matrix.tsv" -n $output_dir/$phenotype"_"$cas"_MLE"  --threads 10
    done
done

