### load libraries

library(tidyverse)
library(readr)
library(LagSequential)


######################## FLOAT / MIDDLE + COLLEGE #################################

### load data
df_float_middleCollege <- read_csv("data/segmentData_combinedByLevel/float_middleCollege.csv")

### convert into char
tmp_f_middleCollege <- sapply(df_float_middleCollege, as.character)

### define output
sink("./output/lsa/lagseq_float_middleCollege.txt", append = T)

### lagseq analysis
seqgroups(tmp_f_middleCollege, lag = 1,
          adjacent = TRUE,
          tailed = 2,
          test = "homogeneity",
          output = "all")
sink()


######################## CHANGELESS / MIDDLE + COLLEGE #################################

### load data
df_changeless_middleCollege <- read_csv("data/segmentData_combinedByLevel/changeless_middleCollege.csv")

### convert into char
tmp_c_middleCollege <- sapply(df_changeless_middleCollege, as.character)

### define output
sink("./output/lsa/lagseq_changeless_middleCollege.txt", append = T)

### lagseq analysis
seqgroups(tmp_c_middleCollege, lag = 1,
          adjacent = TRUE,
          tailed = 2,
          test = "homogeneity",
          output = "all")
sink()

