## preprocess phyloseq object
## edit sample data,
## correct tax table

library(phyloseq)
library(microViz)
library(tidyverse)

## check and edit taxonomy

pseq_true <- readRDS("../data/raw/physeq_1750_90_q15.rds")
pseq_nct1 <- readRDS("../data/raw/physeq_1000_50_nct.rds")
pseq_nct2 <- readRDS("../data/raw/physeq_acid_nct.rds")

pseq <- merge_phyloseq(pseq_true, pseq_nct1, pseq_nct2)
Taxa_lst <- pseq %>% taxa_names()
write.table(Taxa_lst, "../tmp/Taxa_mice.txt", quote = F, col.names = F, row.names = F)

## run taxonkit
cmd = "bash Fetch_taxonomy_from_taxID.sh ../tmp/Taxa_mice.txt ../tmp/Mice_out.txt ../tmp/Mice_log.txt"
system(cmd)

## merge taxa
# taxid 671223 was merged into 2559073  ---
# taxid 46170 was merged into 1280  ---
# taxid 2546450 was merged into 2045451 ---
# taxid 1156433 was merged into 1156431  ---
# taxid 147467 was merged into 1296   ---
# taxid 2487071 was merged into 2487072 ---
# taxid 2528243 was merged into 75294 ---
# taxid 866775 was merged into 2976812   ---
# taxid 1670641 was merged into 1637975  --
# taxid 2715211 was merged into 2758038

pseq_2 <- pseq %>% 
  merge_taxa(c(671223, 2559073), 2) %>% 
  merge_taxa(c(46170, 1280), 2) %>% 
  merge_taxa(c(2546450, 2045451), 2) %>% 
  merge_taxa(c(1156433, 1156431), 2) %>% 
  merge_taxa(c(147467, 1296), 2) %>% 
  merge_taxa(c(2487071, 2487072), 2) %>% 
  merge_taxa(c(2528243, 75294), 2) %>% 
  merge_taxa(c(866775, 2976812), 2) %>% 
  merge_taxa(c(1670641, 1637975), 2) %>% 
  merge_taxa(c(2715211, 2758038), 2)



