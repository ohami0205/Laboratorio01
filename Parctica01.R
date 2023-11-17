# pracica 1

read.
library(readr)
epa_http <- read_table("C:/Users/ohamiym/Downloads/epa-http/epa-http.csv",
col_names = FALSE)

colnames(epa_http)
colnames(epa_http)[1] <-"IPs"

colMeans("Bytes de reply", na.rm = FALSE)

#colMeans("bytes_sent", na.rm = TRUE)

epa_http$bytes_sent <- as.numeric(epa_http$X7)
mean(epa_http$bytes_sent,na.rm = TRUE)

dim(epa_http)

filtro <- grep("edu",epa_http$IPs,ignore.case = TRUE)
dim(unique(epa_http[filtro,"IPs"]))
dim(epa_http[filtro,])



  filtro1 <-  filter(epa_http, grepl("edu",IPs,ignore.case = TRUE), grepl(".txt",X4,ignore.case = TRUE))
sum(filtro1$bytes_sent, na.rm = T)

contador_slash <- filter(epa_http,X4 == "/")

contador_