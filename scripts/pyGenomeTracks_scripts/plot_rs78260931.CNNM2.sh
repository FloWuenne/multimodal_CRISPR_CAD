## pyGenomeTracks
## https://github.com/deeptools/pyGenomeTracks
## Create a view for multiple tracks using pyGenomeTracks

## Ensemble gtf: ftp://ftp.ensembl.org/pub/grch37/release-96/gtf/homo_sapiens/

## Make configuration file
igv_tracks="/Users/florian_wuennemann/Postdoc/Endoscreen/igv_tracks"

## CRISPR tracks
endo_mageck_hits="$igv_tracks/endoscreen_igv_hits_test.bed"
endo_proxies="$igv_tracks/endoscreen_igv_proxies.bed"
endo_sentinel="$igv_tracks/endoscreen_igv_sentinels.bed"
endo_sgrna="$igv_tracks/endoscreen_igv_sgRNA.bed"

## ABC models
## Code to subset the WT ABC model for only loops at FES/FES_FURIN
## grep FES_ EnhPred_telo_WT_100x_sorted.bedpe  > FES_FURIN_loops.bedpe
abc_model_fes="$igv_tracks/ABCmodel_teloHAEC_TNF_ATAC_hic/FES_FURIN_loops.bedpe"
abc_model_4h="$igv_tracks/ABCmodel_teloHAEC_TNF_ATAC_hic/EnhPred_telo_4h_100x_sorted.bedpe"

## OMICS data
atac_wt="$igv_tracks/ATACseq_teloHAEC_TNF/atacseq_bwmerge_wt.bw"
rnaseq_wt="$igv_tracks/teloHAEC_TNF_0h-r1r2_merged.bw"

## Full locus for new Figure 6
pyGenomeTracks --tracks rs78260931.CNNM2.ini --region chr10:104,583,695-104,955,431 --dpi 300 --width 11 --height 8 --fontSize 5 --outFileName ./rs78260931.CNNM2.full_locus.pdf

## rs12311848 - zoomed locus
pyGenomeTracks --tracks rs78260931.CNNM2.zoomed.ini --region chr10:104,721,171-104,722,700 --dpi 300 --width 20 --height 4 --outFileName ./rs78260931.CNNM2.zoomed_locus.pdf