## This script contains functions and plot themes for creating figures
theme_cowplot_custom <- theme_cowplot() + 
  theme(legend.title = element_text(colour="black", 
                                    face="bold"),
        axis.title.y = element_text(colour="black", 
                                    face="bold"),
        axis.title.x = element_text(colour="black", 
                                    face="bold"),
        strip.background = element_rect(fill="grey20"),
        strip.text = element_text(colour = 'white',
                                    face = "bold",
                                    angle = 0))


## Plot differentially expressed genes in cis to an sgRNA position
de_cis_plot <- function(cis_de_table,
                        highlight_color = "red"){
  
  ggplot(cis_de_table,aes(distance_to_sgrna_kb,-log10(padj),
                         label = gene_label)) +
    geom_point(size = 2) +
    geom_point(data = subset(cis_de_table,gene_label != ""),
               color = highlight_color,
               size = 3) +
    labs(x = "Absolute distance to sgRNA (kb)",
         y = "-log10(adjusted p-value)") +
    geom_hline(yintercept = -log10(0.05),
               linetype = 2) +
    geom_vline(xintercept = 0, linetype = 2)
}



