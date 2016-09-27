setwd("C:/work/workitem/ES_715395_GVC_T1_MOS")

calls_0806 <- read.table(
  file = "0806.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)

max(calls_0806$mcst_TotalAudioDurationInSeconds, na.rm=TRUE)
max(calls_0806$mcst_TotalAudioDurationInSeconds, na.rm=TRUE) / 60

median(calls_0806$mcst_TotalAudioDurationInSeconds, na.rm=TRUE) / 60

SWW <- calls_0806[grepl("Skype@Work Windows", calls_0806$csa_user_platform), ]
median(SWW$mcst_TotalAudioDurationInSeconds)


T1_0806 <- read.table(
  file = "SUMMARY_T1_DATA_0806.txt",
  sep = ",", 
  header = TRUE, 
  quote = "\"", fill = TRUE
)

SwW_T1 <- T1_0806[grepl("Skype@Work Windows", T1_0806$Platform), ]
median(SwW_T1, na.rm=TRUE) / 60

# The following two record 
focus_0806 <- SWW[c(1, 2), ][,c("mcst_TotalAudioDurationInSeconds", "mcl_connect_time", "mcl_end_time", "csa_user_platform")]

SWW[c(1, 2), ]$mcst_TotalAudioDurationInSeconds / 60

# 0825 case 
calls_0825 <- read.table(file = "0825.txt", sep = ",", header = TRUE, quote = "\"", fill=TRUE)
T1_0825 <- read.table(file = "SUMMARY_T1_DATA_0825.txt", sep = ",", header = TRUE, quote = "\"", fill=TRUE)
SWW_0825 <- calls_0825[grepl("Skype@Work Windows", calls_0825$csa_user_platform), ]
SwW_T1_0825 <- T1_0825[grepl("Skype@Work Windows", T1_0825$Platform), ]

focus_0825 <- SwW_T1_0825[1, ][, c("SumDuration", "CountShortCall", "CountItems", "AvgP50Duration", "AggregatedP50Duration")]
write.csv(focus_0825, "focus_0825.csv")