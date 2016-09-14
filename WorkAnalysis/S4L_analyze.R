setwd("C:/work/workitem/ES_696417_GVC_T1")

calls <- read.table(
  file = "stream.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill = TRUE
)

head(calls$c("mcr_record_timestamp", "mcl_record_timestamp"))
