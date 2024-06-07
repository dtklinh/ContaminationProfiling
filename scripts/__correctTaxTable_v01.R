### correct tax_table

library(phyloseq)
#library(taxize)
library(tidyverse)

tax_tbl <- readRDS("../data/raw/tax_table.rds")
AllTaxID <- rownames(tax_tbl)
write.table(AllTaxID, "../tmp/AllTaxID.txt", quote = F, col.names = F, row.names = F)
cmd = "bash Fetch_taxonomy_from_taxID.sh ../tmp/AllTaxID.txt ../tmp/AllTaxID_out.txt ../tmpAllTaxID_log.txt"
system(cmd)

## cateralog log file into three file: merge, deleted, not found and store them in meta data
Lines <- readLines("../tmp/AllTaxID.log.txt")
merged_idx <- grepl("merged", Lines, fixed = T)
deleted_idx <- grepl("deleted", Lines, fixed = T)
notFound_idx <- grepl("not found", Lines, fixed = T)
Lines_merged <- Lines[merged_idx]
Lines_deleted <- Lines[deleted_idx]
Lines_notFound <- Lines[notFound_idx]


arr_notFound <- lapply(Lines_notFound, function(x) strsplit(Lines_notFound[547], split = "\\s+")[[1]][4]