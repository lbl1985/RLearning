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
                          , ]

input_1on1_0926 <- read.table(
  file = "input_1on1_header_example.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)
input_1on1_header <- names(input_1on1_0926)
write.table(input_1on1_header, "input_1on1_header.csv")

levels(input_1on1_0926$ecs_1_environment)
levels(input_1on1_0926$csa_1_environment)
levels(input_1on1_0926$css_1_environment)
levels(input_1on1_0926$cst_1_environment)

levels(input_1on1_0926$participant_1_version)
levels(input_1on1_0926$participant_1_platform)
levels(input_1on1_0926$ngm_1_call_mos_score)
levels(input_1on1_0926$ngm_1_call_mos_score_tracking_reason)

# GVC 0926 section
gvc_0926 <- read.table(
  file = "gvc_0926.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)
Teams <- gvc_0926[grepl("Skype Teams", gvc_0926$Platform), ]
Teams_score <- Teams[grepl("random", Teams$MOSScoreReason) & grepl("production", Teams$Deployment), c("Deployment", "MOSScore", "MOSScoreReason")]
Teams_score <- Teams[grepl("random", Teams$MOSScoreReason) & grepl("production", Teams$Deployment), ]

gvc_0926_ST <- read.table(
  file = "gvc_0926_ST.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)

# ================
# Restart my analysis
# ================
gvc_0923 <- read.table(
  file = "gvc_0923.txt",
  sep = ",",
  header = TRUE,
  quote = "\"", fill=TRUE
)

gvc_0923 <- read.table(file = "gvc_0923.csv",  sep = ",",  header = TRUE,  quote = "\"", fill=TRUE)
gvc_0926 <- read.table(file = "gvc_0926.txt",  sep = ",",  header = TRUE,  quote = "\"", fill=TRUE)
gvc_0927 <- read.table(file = "gvc_0927.txt",  sep = ",",  header = TRUE,  quote = "\"", fill=TRUE)

p2p_0923 <- read.table(file = "p2p_0923.csv",  sep = ",",  header = TRUE,  quote = "\"", fill=TRUE)
p2p_0926 <- read.table(file = "p2p_0926.txt",  sep = ",",  header = TRUE,  quote = "\"", fill=TRUE)
p2p_0927 <- read.table(file = "p2p_0927.txt",  sep = ",",  header = TRUE,  quote = "\"", fill=TRUE)



getValidCQF <- function(data, name){
  
}