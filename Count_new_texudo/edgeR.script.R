library(org.Hs.eg.db)
library(readr)
library(edgeR)

transcript_count_matrix_conditionsSex <- read_csv("~/Pesquisa/Selma_Analysis/Count_new_texudo/transcript_count_matrix_conditionsSex.csv")
View(transcript_count_matrix_conditionsSex)

x = transcript_count_matrix
targets = transcript_count_matrix_conditionsSex

rm(transcript_count_matrix_conditionsSex, transcript_count_matrix)


#x = read.table("~/Pesquisa/Selma_Analysis/Count_new_texudo/transcript_count_matrix.csv", sep = ",", header = TRUE)

#targets = read.table("~/Pesquisa/Selma_Analysis/Count_new_texudo/transcript_count_matrix.csv.conditions", sep = "\t", header = TRUE

y <- DGEList(counts = x[,2:ncol(x)], genes = x[,1], group = factor(paste0(targets$diagnosis, "_", targets$gender, "_", targets$group)))

#------------------------------------------------------------------------------------------------------------------------------

library(org.Hs.eg.db)
library(readr)
library(edgeR)

gene_count_matrix <- read_csv("~/Pesquisa/Selma_Analysis/Count_new_texudo/gene_count_matrix.csv")
View(gene_count_matrix)

