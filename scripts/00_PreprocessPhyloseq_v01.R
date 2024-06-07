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
