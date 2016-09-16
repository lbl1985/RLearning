setwd("C:/work/workItem/ES_689563_Linux_1427")

calls <- read.table(
  file = "geo.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)

# levels(calls$platform)
# levels(calls$remote_platform)

columns <- names(calls)

columns[grepl("platform", columns)]
head(calls$participant_1_platform)
levels(calls$participant_1_platform)

head(calls)$participant_1_platform
head(calls[, columns[grepl("platform", columns)]])

calls$cst_1_platform

