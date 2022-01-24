### import packages

library(circlize)
library(networkD3)
library(dplyr)
library(tidyverse)



######################### CHANGELESS / FREQ ####################################

### import data
df_changeless_middleCollege <- read.csv("Projects/pps_isls_2022/lagseq/data/lsa_frequencyData/csv/lagseq_freq_changeless_middleCollege.csv", row.names="move")

### convert to matrix
df_changeless_middleCollege <- as.matrix(df_changeless_middleCollege)
df_changeless_middleCollege

### calibrate chord diagram
circos.par(start.degree = 270)

### define column names and colors
grid.col = c(ND_1 = "#003f5c", ND_2_3 = "#374c80", AR_1 = "#7a5195", AR_2_3 = "#bc5090", CE_1 = "#ef5675", CE_2_3 = "#ff764a", SR = "#ffa600",
             ND_1_seq = "#003f5c", ND_2_3_seq = "#374c80", AR_1_seq = "#7a5195", AR_2_3_seq = "#bc5090", CE_1_seq = "#ef5675", CE_2_3_seq = "#ff764a", SR_seq = "#ffa600")

### create diagram
chordDiagram(df_changeless_middleCollege,
             big.gap = 10,
             grid.col = grid.col,
             annotationTrack = "grid",
             preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(df_changeless_middleCollege))))))

### add labels
# circos.track(track.index = 1, panel.fun = function(x, y) {
#   circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index,
#               facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
# })

### add horizontal line
abline(v= 0, lty = 2, col = "#00000080")

### add titles
title(main = "Problem-Solving Moves in Changeless")

### clear
circos.clear()



######################### FLOAT / FREQ ####################################

### import data
df_float_middleCollege <- read.csv("Projects/pps_isls_2022/lagseq/data/lsa_frequencyData/csv/lagseq_freq_float_middleCollege.csv", row.names="move")

### convert to matrix
df_float_middleCollege <- as.matrix(df_float_middleCollege)
df_float_middleCollege

### calibrate chord diagram
circos.par(start.degree = 270)

### define column names and colors
grid.col = c(ND_1 = "#003f5c", ND_2_3 = "#374c80", AR_1 = "#7a5195", AR_2_3 = "#bc5090", CE_1 = "#ef5675", CE_2_3 = "#ff764a", SR = "#ffa600",
             ND_1_seq = "#003f5c", ND_2_3_seq = "#374c80", AR_1_seq = "#7a5195", AR_2_3_seq = "#bc5090", CE_1_seq = "#ef5675", CE_2_3_seq = "#ff764a", SR_seq = "#ffa600")

### create diagram
chordDiagram(df_float_middleCollege,
             big.gap = 10,
             grid.col = grid.col,
             annotationTrack = "grid",
             preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(df_float_middleCollege))))))

### add labels
# circos.track(track.index = 1, panel.fun = function(x, y) {
#   circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index,
#               facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
# })

### add horizontal line
abline(v=0, lty = 2, col = "#00000080")

### add titles
title(main = "Problem-Solving Moves in Float")

### clear
circos.clear()



# ######################### CHANGELESS / YULES Q ####################################
#
# ### import data
# df_changeless_middleCollege_yulesq <- read.csv("Projects/pps_isls_2022/lagseq/data/lsa_yulesQ/csv/lagseq_yulesq_changeless_middleCollege.csv", row.names="move")
#
# ### convert to matrix
# df_changeless_middleCollege_yulesq <- as.matrix(df_changeless_middleCollege_yulesq)
# df_changeless_middleCollege_yulesq
#
# ### calibrate chord diagram
# circos.par(start.degree = 270)
#
# ### define column names and colors
# grid.col = c(ND_1 = "#003f5c", ND_2_3 = "#374c80", AR_1 = "#7a5195", AR_2_3 = "#bc5090", CE_1 = "#ef5675", CE_2_3 = "#ff764a", SR = "#ffa600",
#              ND_1_seq = "#003f5c", ND_2_3_seq = "#374c80", AR_1_seq = "#7a5195", AR_2_3_seq = "#bc5090", CE_1_seq = "#ef5675", CE_2_3_seq = "#ff764a", SR_seq = "#ffa600")
#
# ### create diagram
# chordDiagram(df_changeless_middleCollege_yulesq,
#              big.gap = 10,
#              grid.col = grid.col,
#              annotationTrack = "grid",
#              preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(df_changeless_middleCollege_yulesq))))))
#
# ### add labels
# # circos.track(track.index = 1, panel.fun = function(x, y) {
# #   circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index,
# #               facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
# # })
#
# ### add horizontal line
# abline(v= 0, lty = 2, col = "#00000080")
#
# ### add titles
# title(main = "Problem-Solving Moves in Changeless")
#
# ### clear
# circos.clear()
#
#
#
# ######################### FLOAT / YULES Q ####################################
#
# ### import data
# df_float_middleCollege <- read.csv("data/lsa_frequencyData/csv/lagseq_freq_float_middleCollege.csv", row.names="move")
#
# ### convert to matrix
# df_float_middleCollege <- as.matrix(df_float_middleCollege)
# df_float_middleCollege
#
# ### calibrate chord diagram
# circos.par(start.degree = 270)
#
# ### define column names and colors
# grid.col = c(ND_1 = "#003f5c", ND_2_3 = "#374c80", AR_1 = "#7a5195", AR_2_3 = "#bc5090", CE_1 = "#ef5675", CE_2_3 = "#ff764a", SR = "#ffa600",
#              ND_1_seq = "#003f5c", ND_2_3_seq = "#374c80", AR_1_seq = "#7a5195", AR_2_3_seq = "#bc5090", CE_1_seq = "#ef5675", CE_2_3_seq = "#ff764a", SR_seq = "#ffa600")
#
# ### create diagram
# chordDiagram(df_float_middleCollege,
#              big.gap = 10,
#              grid.col = grid.col,
#              annotationTrack = "grid",
#              preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(df_float_middleCollege))))))
#
# ### add labels
# # circos.track(track.index = 1, panel.fun = function(x, y) {
# #   circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index,
# #               facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5))
# # })
#
# ### add horizontal line
# abline(v=0, lty = 2, col = "#00000080")
#
# ### add titles
# title(main = "Problem-Solving Moves in Float")
#
# ### clear
# circos.clear()
