## Load modules for kallisto
module load  nixpkgs/16.09
module load intel/2018.3
module load kallisto/0.46.1

## Create kallisto index based on Ensemble 96 with Cas9 sequence added
## ensemble genome: https://github.com/pachterlab/kallisto-transcriptome-indices/releases/tag/ensembl-96
kallisto index -i Homo_sapiens.GRCh38.cdna.all.with_Cas9.idx Homo_sapiens.GRCh38.cdna.all.with_Cas9.fa