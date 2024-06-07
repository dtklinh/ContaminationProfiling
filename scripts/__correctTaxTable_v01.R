### correct tax_table

library(phyloseq)
library(taxize)
library(tidyverse)

tax_tbl <- readRDS("../data/raw/tax_table.rds")
AllTaxID <- rownames(tax_tbl)
write.table(AllTaxID, "../tmp/AllTaxID.txt", quote = F, col.names = F, row.names = F)
cmd = "bash Fetch_taxonomy_from_taxID.sh ../tmp/AllTaxID.txt ../tmp/AllTaxID_out.txt ../tmpAllTaxID_log.txt"
system(cmd)

