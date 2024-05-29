## packages, functions

# if (!require("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# BiocManager::install(version = "3.19")
BiocManager::install(c("phyloseq", "microbiome", "ComplexHeatmap"), update = FALSE)
remotes::install_github("david-barnett/microViz")
library(phyloseq)
library(tidyverse)
library(dplyr)

Kolors <- c("#9d547c","#56ca63","#a357d6","cornflowerblue","#419d2a","sandybrown","red3","peachpuff","cyan","paleturquoise3","mistyrose","mediumpurple","mediumseagreen","mediumorchid","moccasin","orange4","olivedrab","midnightblue","papayawhip","palevioletred4","brown1","greenyellow","orchid","navy","darkred","navajowhite1","mistyrose1","grey85","#525fd6","red2","#8cbe3a","#c944aa","indianred3","#5ba557","#9e66cb","#c1b735","#6d82ec","grey25","#e69728","#6654b0","lightsalmon3","lightcyan1","khaki1","seagreen1","plum1","lightsteelblue1","palevioletred3","mintcream","magenta3","#799330","#da7fdf","#3c782c","#e44586","blue4","#63c996","#dc3f53","#49cbc8","#cf3f29","#4fabda","#da6c2b","#598bd1","#b78c24","#8d4191","#a0b971","slategray1","sienna","plum1","lightyellow1","lightskyblue3","linen","limegreen","cornsilk1","mediumaquamarine","gray14","gold3","darkviolet","#b2386a","#479d71","#ae4341","#2ba198","#e07557","#5361a3","#dda353","#aa98df","#5b6114","#dc89bf","#327243","slateblue1","#e57b94","#277257","#9b62a0","#bbab59","#98495a","#526229","#d8827d","#857624","gray40","#9a4a22","#7c7d46","mediumslateblue","lemonchiffon1","#e3a073","#9e6b33", "gray74","slateblue1","rosybrown3", "lawngreen","gainsboro","dodgerblue3","deeppink3","firebrick3", "orchid2", "olivedrab1", "ivory3", "darkseagreen", "bisque2", "darkgoldenrod2", "blue2", "skyblue", "seashell2", "turquoise", "tan1", "seagreen2", "palevioletred3", "linen", "steelblue4","ghostwhite","dodgerblue1","deeppink1","firebrick1", "limegreen", "purple3", "khaki3", "snow3", "darkslategray","darkorchid","lavender", "magenta2", "palegreen", "salmon", "maroon", "cyan2","#671408","#FAEBD7","#7FFFD4","#F0FFFF","#A52A2A","burlywood","cadetblue","#7FFF00","chocolate","cornsilk","slateblue1","#FF7F50","red1","#008B8B","darkgoldenrod1","darkolivegreen","darkorange4","white","hotpink","honeydew1","goldenrod2","darkgreen","oldlace","darkslategray3","navajowhite3","orchid4","gray25","#F0924D")

