setwd("C:/work/workitem/ES_715395_GVC_T1_MOS")

calls_0923 <- read.table(
  file = "stream_0923.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)

names(calls_0923)
Teams <- calls_0923[grepl("Skype Teams", calls_0923$Platform), ]
levels(calls_0923$Platform)
Teams_production_score <- Teams[grepl("production", Teams$Deployment) & grepl("random", Teams$MOSScoreReason), ]
Teams_score <- Teams[grepl("random", Teams$MOSScoreReason), c("Deployment", "MOSScore", "MOSScoreReason")]
Teams_score <- Teams[grepl("random", Teams$MOSScoreReason), ]

calls_cobrand_0923 <- read.table(
  file = "stream_cobrand_0923.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)
levels(calls_cobrand_0923$Platform)
calls_ST_0923$Platform
Teams <- calls_cobrand_0923[grepl("Skype Teams", calls_0923$Platform), ]
Teams_score <- Teams[grepl("random", Teams$MOSScoreReason), c("csa_environment", "csa_user_build", "Deployment", "MOSScore", "MOSScoreReason")]

stream_1on1_0926 <- read.table(
  file = "stream_1on1_0926.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)
Teams <- stream_1on1_0926[grepl("Skype Teams", stream_1on1_0926$participant_1_platform) 
                          & grepl("Skype Teams", stream_1on1_0926$participant_2_platform)
                          & gre
                          , ]
