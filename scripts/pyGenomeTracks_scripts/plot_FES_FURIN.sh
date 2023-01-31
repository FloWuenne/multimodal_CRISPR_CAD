## pyGenomeTracks
## https://github.com/deeptools/pyGenomeTracks
## Create a view for multiple tracks using pyGenomeTracks

## Make configuration file
igv_tracks="../igv_tracks"

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


## Command to make initial configuration file for tracks
#make_tracks_file --trackFiles  $lipid_associations $endo_mageck_hits $endo_proxies $endo_sentinel $endo_sgrna  gencode.v19.annotation.gtf.gz $atac_wt $rnaseq_wt $abc_model_4h -o Endoscreen.track.Cas9.ini
#make_tracks_file --trackFiles  $endo_mageck_hits $endo_proxies $endo_sentinel $endo_sgrna gencode.v19.annotation.gtf.gz $atac_wt $abc_model_fes -o Endoscreen.track.VP64.ini

## FES/FURIN
pyGenomeTracks --tracks FES_FURIN.tracks.ini --region chr15:91,411,000-91,442,416 --dpi 300 --width 20 --height 8  --outFileName ./FES.full_locus.pdf
pyGenomeTracks --tracks FES_FURIN.tracks.ini --region chr15:91,411,000-91,442,416 --dpi 300 --width 20 --height 8 --outFileName ./FES.full_locus.png
