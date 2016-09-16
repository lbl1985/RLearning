library(plyr)
setwd("C:/work/workitem/ES_536421_sticky")

calls_1000 <- read.table(file = "top1000.txt", sep = ",", header = TRUE, quote = "\"", fill=TRUE)
join_1000_vm <- calls_1000$vm
join_1000_ng_media_valid <- calls_1000$ng_media_valid
sum(join_1000_ng_media_valid == "True")
sum(join_1000_ng_media_valid == "False")
sum(join_1000_ng_media_valid == "")

ng_kpi_top_1000 <- read.table(file = "ng_kpi_top_1000.txt", sep = ",", header = TRUE, quote = "\"", fill=TRUE) 
levels((ng_kpi_top_1000$is_voicemail_call))


count(join_1000_ng_media_valid)
