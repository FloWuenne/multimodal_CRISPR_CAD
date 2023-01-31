library(dplyr) 
library(ggplot2)
library(ggpubr)
theme_set(theme_pubclean())

growth <- read.table("Growth2.txt", sep="\t", header=T)

p2 <- ggbarplot(growth, x = "Antibiotic", y = "cell_count", 
          add = c("mean_se", "jitter"),
          color = "sgRNA", palette = c("#00AFBB", "#E7B800"),
          position = position_dodge(0.8)) + xlab("") + ylab("Cell count")

expression <- read.table("Expression.txt", sep="\t", header=T)

p3 <- ggbarplot(expression, x = "Gene", y = "Expression", 
                add = c("mean_se", "jitter"),
                color = "sgRNA", position = position_dodge(0.8)) + xlab("") + 
                ylab("Relative expression levels")

plot_grid(p2,p3, nrow=1, labels=c("A","B"))