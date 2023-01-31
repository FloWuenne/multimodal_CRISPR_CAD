#!/bin/bash
## Use kallisto to quantify against an index with Cas9 coding sequnce in it to check for Cas9 expression

module load kallisto/0.46.0

fastq_dir="multimodal_CRISPR_CAD/fastq"
ref_dir="./references"
out_dir="kallisto_quant_res"
n_threads="4"
bootstraps="30"

samples=("SRR13602667" "SRR13602666" "SRR13602665" "SRR13602664" "SRR13602663" "SRR13602662" "SRR13602669" "SRR13602668" "SRR13602668" "SRR13602670" "SRR13602673" "SRR13602672" "SRR13602675" "SRR13602674" "SRR13602679" "SRR13602677" "SRR13602676" "SRR13602678")

for sample in samples
do
	kallisto quant -i $ref_dir/Homo_sapiens.GRCh38.cdna.all.with_Cas9.idx \
       -b $bootstraps \
       -t $n_threads \
       -o $out_dir/$sample \
       $fastq_dir/$sample"_1.fastq" \
       $fastq_dir/$sample"_2.fastq"
done