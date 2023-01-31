## Create sgRNA tracks for supplementary Figures
## GECKO
head -1 endoscreen_igv_sgRNA.bed > endoscreen_pos_gecko_sgRNA.bed
grep "GECKO" endoscreen_igv_sgRNA.bed >> endoscreen_pos_gecko_sgRNA.bed
grep "SELE\|ICAM\|VCAM" endoscreen_pos_gecko_sgRNA.bed > endoscreen_pos_gecko_sgRNA.sub.bed

## SAM
head -1 endoscreen_igv_sgRNA.bed > endoscreen_pos_sam_sgRNA.bed
grep "SAM" endoscreen_igv_sgRNA.bed >> endoscreen_pos_sam_sgRNA.bed
grep "SELE\|ICAM\|VCAM" endoscreen_pos_sam_sgRNA.bed > endoscreen_pos_sam_sgRNA.sub.bed

## promoter
head -1 endoscreen_igv_sgRNA.bed > endoscreen_prom_sgRNA.bed
grep "prom" endoscreen_igv_sgRNA.bed >> endoscreen_prom_sgRNA.bed
grep "SELE\|ICAM\|VCAM" endoscreen_prom_sgRNA.bed > endoscreen_prom_sgRNA.sub.bed
