## Define directories
guides_dir="../references/"

guides="multimodal_CRISPR_CAD.sgRNA_seqs.txt"

fastq_dir="../GSE165923_sgRNA_fastq"

output_dir="../mageck_counts""

for filename in $fastq_dir/*.gz
do
	echo ${filename##*/}

	mageck count -l $guides_dir/$guides \
	 -n $output_dir/${filename##*/} \
	 --sample-label ${filename##*/} \
	 --fastq $filename \
	 --pdf-report

done
