library(data.table)

anno <- as.data.frame(fread('go/IRGSP-1.0_representative_annotation_2021-11-11.tsv',
                            quote = ""))
genes_transID <- anno[match(genes, anno$Locus_ID),
                      'Transcript_ID']
bkgd_transID <- anno[match(bkgd, anno$Locus_ID),
                     'Transcript_ID']
