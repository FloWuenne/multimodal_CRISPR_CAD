## pyGenomeTracks
## https://github.com/deeptools/pyGenomeTracks
## Create a view for multiple tracks using pyGenomeTracks

## Make configuration file
igv_tracks="./igv_tracks"

## Other tracks
lipid_associations="/home/florian/Postdoc/Endoscreen/Colocalization_lipids_CAD_DHX38/rs2000999_rs0.8_lipid_variants.bed"

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

#### SELE
pyGenomeTracks --tracks positive_control_tracks.tracks.SELE.ini --region chr1:169,691,068-169,704,192 --dpi 300 --width 20 --height 8 --outFileName ./SELE.full_locus.pdf

#### VCAM1
pyGenomeTracks --tracks positive_control_tracks.tracks.VCAM1.ini --region chr1:101,180,345-101,209,453 --dpi 300 --width 20 --height 8  --outFileName ./VCAM1.full_locus.pdf

#### ICAM1
pyGenomeTracks --tracks positive_control_tracks.tracks.ICAM1.ini --region chr19:10,377,573-10,400,000 --dpi 300 --width 20 --height 8  --outFileName ./ICAM1.full_locus.pdf

## Combine svg files
