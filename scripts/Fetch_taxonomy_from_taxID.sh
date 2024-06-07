#!/bin/bash
FileIn=$1
FileOut=$2
FileLog=$3
###---taxonkit lineage  -R FFPE_FF_TaxID.txt | tee FFPEvsFF_taxonomy.txt
/home/lda/Softwares/taxonkit lineage  -R $FileIn 2> $FileLog | tee $FileOut
