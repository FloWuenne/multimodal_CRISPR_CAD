## pyGenomeTracks
## https://github.com/deeptools/pyGenomeTracks
## Create a view for multiple tracks using pyGenomeTracks

## Make configuration file
igv_tracks="./igv_tracks"

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


## DHX38
pyGenomeTracks --tracks DHX38.tracks.ini --region chr16:72,078,360-72,154,149 --dpi 300 --width 11 --height 8 --fontSize 5 --outFileName.//DHX38.locus_view.bigger_font.pdf
